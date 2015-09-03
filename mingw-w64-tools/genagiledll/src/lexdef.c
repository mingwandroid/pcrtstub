/*
    genagiledll - Generate stub-library acting like an import-library
                  using .def file syntax.
    Copyright (C) 2014, 2015  mingw-w64 project

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#if defined(_WIN32)
#include <io.h>
#endif

#include "token.h"

static void addCh (int);
static void delCh (void);
static void zeroCh (void);
static int pCh (void);
static int rCh (void);
static void bCh (int);

typedef struct sMem {
  struct sMem *next;
  size_t len;
  char name[1];
} sMem;

#define SUFFIX "agile"

static int t_max = 0, t_pos = 0;
static char *t_buf = NULL;
static int t_backch = -1;
static FILE *t_in = NULL;
static int exports_seen = 0;

static sMem *t_smem = NULL;
sSymbol *t_sym = NULL;
static sSymbol *t_lastsym = NULL;

const char *
unifyCat (const char *s, const char *t)
{
  char *h;
  const char *r;

  if (!t || *t == 0) return unifyStr (s);
  if (!s || *s == 0) return unifyStr (t);
  h = (char *) malloc (strlen (s) + strlen (t) + 1);
  strcpy (h, s); strcat (h, t);
  r = unifyStr (h);
  free (h);

  return r;
}

const char *
unifyStr (const char *s)
{
  sMem *p,*c,*n;
  size_t l;

  if (*s == 0)
    return "";

  l = strlen (s);
  p = NULL; c = t_smem;

  while (c != NULL && c->len < l)
    c = (p = c)->next;

  while (c != NULL && c->len == l)
    {
      int e = memcmp (c->name, s, l);
      if (!e) return c->name;
      if (e > 0) break;
      c = (p = c)->next;
    }

  n = (sMem *) malloc (sizeof (sMem) + l);
  n->next = c;
  if (!p)
    t_smem = n;
  else
    p->next = n;
  n->len = l;
  strcpy (n->name, s);

  return n->name;
}
    
static void addCh (int ch)
{
  if ((t_pos + 2) >= t_max)
    {
      char *h = malloc (t_max + 128);
      if (!h)
	{
	  fprintf (stderr, "Fatal error: Run out of memory\n");
	  exit (2);
	}
      h[t_pos] = 0;

      if (t_pos)
	memcpy (h, t_buf, t_pos);
      if (t_buf)
	free (t_buf);
      t_buf = h;
      t_max += 128;
    }

  if (ch < 0)
    return;

  t_buf[t_pos++] = (char) ch;
  t_buf[t_pos] = 0;
}

static void delCh (void)
{
  if (t_pos > 0)
    {
      t_buf[--t_pos] = 0;
    }
  else if (!t_buf)
    addCh (-1);
}

static void zeroCh (void)
{
  if (t_pos) { t_buf[0] = 0; t_pos = 0; }
  else if (!t_buf) addCh (-1);
}

static int pCh (void)
{
  int r = t_backch;

  if (r != -1)
    return r;

  r = rCh ();
  bCh (r);
  return r;
}

static int rCh (void)
{
  int r = t_backch;
  unsigned char ch;

  if (r != -1) { t_backch = -1; }
  else {
    if (feof (t_in) || fread (&ch, 1, 1, t_in) != 1)
      return r;
    r = (int) ch;  r &= 0xff;
  }

  if (r == '\r')
    return rCh ();

  addCh (r);
  return r;
}

static void bCh (int ch)
{
  if (ch < 0) return;
  delCh ();
  t_backch = ch;
}

static void readDigit (void)
{
  int r;
  r = rCh ();
  if (r == '0') {
    switch (pCh ()) {
    case 'x': case 'X': case 'o': case 'O': rCh (); break;
    default: break;
    }
  }
  while ((r = pCh ()) != -1 && ((r >= '0' && r <= '9')
	 || (r >= 'a' && r <= 'z') || (r >= 'A' && r <= 'Z')))
    rCh ();
}

static int lexit (void)
{
  int r;

redo:
  do {
    zeroCh ();
    if ((r = rCh ()) == -1) return -1;
  } while (r <= 0x20 && r != '\n');

  /* Ignore comment.  Either introduced by semicolon, or by hash sign.  */
  if (r == ';' || r == '#') {
    while (1) {
      if ((r = pCh ()) == -1) return 0;
      if (r == '\n') break;
      rCh ();
    }
    goto redo;
  }
  switch (r) {
  case '=': if (pCh () == r) { rCh(); return TK_EQUALEQUAL; }
   return r;
  case '@': case ',': case '.': case '\n': return r;
  case '"':
  case TK_OPENCURLY:
    {
      int endr = (r == '"') ? '"' : TK_CLOSECURLY;
      zeroCh ();
      while ((r = pCh ()) != -1 && r != endr)
        {
	  rCh ();
	  if (r == '\\') {
	    if (rCh () == -1) { delCh (); r = -1; break; }
	  }
        }
    if (r == endr)
      { rCh (); delCh ();
    return endr == '"' ? TK_STRING : TK_SOURCEFILENAME;
    }
  }
  case TK_CLOSECURLY:
    rCh (); delCh (); return r;

  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
    bCh (r); readDigit (); return TK_DIGIT;
  default:
    if (r == '_' || r == '?' || (r >= 'a' && r <= 'z')
	|| (r >= 'A' && r <= 'Z') || (r == '.') || (r == '/'));
    else return TK_UNKNOWN;
    while ((r = pCh ()) != -1) {
      if (r <= 0x20) break;
      rCh ();
    }
    if (exports_seen == 0)
      {
	if (!strcmp (t_buf, "LIBRARY")) return TK_LIBRARY;
	if (!strcmp (t_buf, "EXPORTS")) return TK_EXPORTS;
      }
    else
      {
	if (!strcmp (t_buf, "DATA")) return TK_DATA;
      }
    return TK_NAME;
  }
}

static int lexit2 (void)
{
  static int last = '\n';
  int r;
  if (last == -1)
    return -1;
redo:
  r = lexit ();

  /* Eat double new-lines.  */
  if (r == '\n' && last == r)
    goto redo;
  if (r == TK_EXPORTS || r == TK_LIBRARY)
  {
    if (last != TK_NL)
      r = TK_NAME;
  } else if (r == TK_DATA && last == TK_NL)
    r = TK_NAME;

  if (r == TK_EXPORTS)
    exports_seen = 1;
  if (r == TK_UNKNOWN)
    {
      fprintf (stderr, "Unexpected character ,%s'\n", t_buf);
      goto redo;
    }
  last = r;
  return r;
}

const char *cur_libname = "";
const char *cur_libbasename = "";
const char *cur_outlibbasename = "";
static const char *cur_symbol = "";
static const char *cur_libsymbol = "";
static const char *cur_srcfile = "";
static const char *cur_alias = "";
static int cur_data = 0;

static int
expect_newline (const char *stmt)
{
  int r;
  int first = 1;

  while ((r = lexit2 ()) != -1 && r != TK_NL)
    {
      if (first == 1)
	fprintf (stderr, "Unexpected token in %s statment: ,%s", stmt, t_buf);
      else
        fprintf (stderr, " %s", t_buf);
      first = 0;
    }
  if (!first)
    fprintf (stderr, "'.\n");
  return r;
}

static int parseit (void)
{
  int r;
  char *dot = NULL;

  if (!exports_seen) {
    if ((r = lexit2 ()) == -1)
      return 0;
    if (r == TK_EXPORTS)
    {
      r = expect_newline ("EXPORTS");
      return (r != -1 ? 1 : 0);
    }
    if (r == TK_LIBRARY)
    {
      r = lexit2 ();
      if (r != TK_STRING && r != TK_NAME)
	{
	  fprintf (stderr, "Expect name/string after LIBRARY keyword.\n");
	  return (r != -1 ? 1 : 0);
	}

      cur_libname = unifyStr (t_buf);
      if ((dot = strchr(t_buf, '.')) != NULL) {
          *dot = '\0';
          cur_libbasename = unifyStr (t_buf);
      }

      fprintf (stderr, "Current library-name set to %s'\n", cur_libname);
      cur_outlibbasename = unifyCat (cur_libbasename, SUFFIX);

      r = expect_newline ("LIBRARY");
      return (r != -1 ? 1 : 0);
    }
  } else {
    if ((r = lexit2 ()) == -1) return 0;
    if (r != TK_NAME)
    {
      fprintf (stderr, "Unexpected token ,%s'.  Would have expected a string/name.\n", t_buf);
      return (expect_newline ("UNKNOWN") == -1 ? 0 : 1);
    }
    cur_symbol = unifyStr (t_buf); 
    cur_alias = "";
    cur_libsymbol = "";
    cur_srcfile = "";
    cur_data = 0;
    while ((r = lexit2 ()) != -1 && r != TK_NL)
    {
      if (r == TK_DATA)
	cur_data = 1;
      else if (r == TK_EQUAL)
	{
	  r = lexit2 ();
	  if (r != TK_NAME)
	    {
	      fprintf (stderr, "Expected name after = expression.\n");
	      if (r != -1 && r != TK_NL)
		r = expect_newline ("SYMBOL");
	      return (r == -1 ? 0 : 1);
	    }
	  cur_libsymbol = unifyStr (t_buf);
	}
      else if (r == TK_EQUALEQUAL)
	{
	  r = lexit2 ();
	  if (r != TK_NAME)
	    {
	      fprintf (stderr, "Expected name after == expression.\n");
	      if (r != -1 && r != TK_NL)
		r = expect_newline ("SYMBOL");
	      return (r == -1 ? 0 : 1);
	    }
	  cur_alias = unifyStr (t_buf);
	}
      else if (r == TK_SOURCEFILENAME)
      {
          cur_srcfile = unifyStr (t_buf);
      }
      else
	{
	  fprintf (stderr, "Unknown token ,%s'.\n", t_buf);
	}
    }

    addSymbol (cur_symbol, cur_libsymbol, cur_alias, cur_srcfile, cur_data);
  }

  return (r != -1 ? 1 : 0);
}

void addSymbol (const char *sym, const char *libsym, const char *alias, const char *srcfile, int is_data)
{
  sSymbol *n;

  n = (sSymbol *) malloc (sizeof (sSymbol));
  n->next = NULL;
  n->sym = sym;
  n->libsym = libsym;
  n->alias = alias;
  n->srcfile = srcfile;
  n->is_data = is_data;
  n->subs = NULL;

  if (t_lastsym)
    t_lastsym->next = n;
  else
    t_sym = n;
  t_lastsym = n;
}

void sortSymbols (void)
{
  sSymbol *p = NULL, *c = t_sym;

  while (c != NULL)
    {
      if (c->alias[0] != 0)
      {
	sSymbol *l = NULL, *r = t_sym;
	while (r != NULL && r->sym != c->alias)
	{
	  l = r; r = r->next;
	}
	if (!r)
	  {
	    addSymbol (r->alias, unifyStr (""), unifyStr (""), unifyStr (""), 1);
	    r = t_lastsym;
	  }
	if (!p)
	  t_sym = c->next;
	else
	  p->next = c->next;
	c->next = r->subs;
	r->subs = c;
	c = t_sym; p = NULL;
	continue;
      }
      p = c;
      c = c->next;
    }
}

/* Sorts on the directory name of each symbol which identifies a srcfile */
const char * getVPATH (void)
{
  sSymbol *c = NULL;
  int pass = 0;
  int count = 0;
  int i = 0, last_i = 0;
  size_t dirname_space = 0, dirnames_space = 0;
  char * dirnames = NULL;
  char ** dirs = NULL;

  for (pass = 0; pass < 2; ++pass)
    {
      if (pass == 1)
        {
          dirnames = alloca (dirnames_space);
          dirs = alloca (count * sizeof(char*));
          fprintf (stdout, "dirnames = %p, dirnames_end = %p, dirs = %p, dirs_end = %p\n", dirnames, &dirnames[dirnames_space], dirs, &dirs[count]);
        }
      c = t_sym;
      count = 0;
      while (c)
        {
          if (c->srcfile && c->srcfile[0])
            {
              dirname_space = 1 + (strrchr(c->srcfile, '/') ? (size_t)(strrchr(c->srcfile, '/') - c->srcfile) : strlen(c->srcfile));
              if (!pass)
                {
                  dirnames_space += dirname_space;
                }
              else
                {
                  fflush (stdout);
                  dirs[count] = dirnames;
                  dirnames += dirname_space;
                  memcpy(dirs[count], c->srcfile, dirname_space - 1);
                  dirs[count][dirname_space - 1] = '\0';
                }
              count++;
            }
          c = c->next;
        }
    }
  if (!count)
    {
      dirnames = malloc(1);
      dirnames[0] = '\0';
      return dirnames;
    }
  /* Sort to make runs of the same folder */
  qsort(dirs, count, sizeof(char*), strcmp);
  /* count - 1 * ':' + '\0' */
  dirnames_space = count;
  for (pass = 0; pass < 2; ++pass)
    {
      if ( pass == 1)
        {
          dirnames = malloc(dirnames_space);
          dirnames[0] = '\0';
        }
      for (i = 0; i < count; ++i)
        {
        if (!i || strcmp(dirs[i], dirs[i-1]))
        {
            if (!pass)
              {
                dirnames_space += strlen(dirs[i]);
                last_i = i;
              }
            else
              {
                strcat (dirnames, dirs[i]);
                if (i != last_i)
                  strcat(dirnames, ":");
              }
        }
        }
    }
  return dirnames;
}

void dumpSymbols (void)
{
  sSymbol *l, *i;

  l = t_sym;
  while (l != NULL)
  {
    fprintf (stdout, "Symbol: ,%s'", l->sym);
    if (l->is_data) fprintf (stdout, " DATA");
    if (l->subs) {
      i = l->subs;
      fprintf (stdout, " aliases {");
      while (i != NULL)
	{
	  fprintf (stdout, " %s", i->sym);
	  if (i->is_data) fprintf (stdout, ":DATA");
	  i = i->next;
	}
      fprintf (stdout, " }");
    }
    fprintf (stdout, "\n");
    l = l->next;
  }
}

#ifdef _WIN32
#define getcwd(_buf, _max) _getcwd(_buf, _max)
#endif

/* Makes a good faith effort. This is necessary if the input file references
 * source as per fn = mingw_fn {../../mingw_fn.c} */
static void determinePathOfInputFile()
{
  char buf[2048];
  getcwd(&buf[0], sizeof(buf) - 1);
  if (t_in == stdin) {
  } else {
    
  }
}

int main(int argc, char *argv[])
{
  if (argc > 1) {
      t_in = fopen (argv[1], "r");
      if (t_in == NULL) {
          fprintf (stderr, "file %s doesn't exist, using stdin\n", argv[1]);
      }
  }
  if (t_in == NULL) {
      t_in = stdin;
  }
  determinePathOfInputFile ();
  addCh (-1);

  while (parseit ())
    {
    }

  sortSymbols ();
  dumpSymbols ();
  getVPATH ();
  outputSyms ();
  return 0;
}
