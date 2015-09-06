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

#include "output.h"
#include "token.h"
#include "makefile.h"

/* Without workarounds, the call to ar is problematic: "execvp: ar: Argument list too long"
 * Either multiple Automake/libtool convenience libraries can be used from a Makefile.am or
 * ar can be called multiple times from a Makefile.in. This flag selects which type of file
 * to emit. It could be made into an option (or removed if a clear preference is indicated)
 */
static int use_am_libtool = 0;

#define MAX_OBJECTS_PER_GROUP 1091
static int group_file_count = 0;
static int group_lib_num = 0;
static int group_lib_num_first_emulated = -1;

static char *
makefileInstallDir ()
{
  return "@libdir@";
}

FILE *
makefileCreate (const char *pth, const char *vpath)
{
  FILE *makefile = NULL;
  char *ext = NULL;
  if (use_am_libtool)
    {
      ext = ".am";
    }
  else
    {
      ext = ".in";
    }

  makefile = fopen (unifyCat (pth, unifyCat ("Makefile", ext)), "wb");
  if (makefile != NULL)
    {
      printHeader (makefile, "#", "");
      if (use_am_libtool == 0)
	{

	  fprintf (makefile, "VPATH = @srcdir@:%s\n", vpath);
	  fprintf (makefile, "prefix = @prefix@\n");
	  fprintf (makefile, "exec_prefix = @exec_prefix@\n\n");

	  /* http://www.gnu.org/software/automake/manual/automake.html#Third_002dParty-Makefiles */
	  fprintf (makefile, "all: lib%s.a\n\n", cur_outlibbasename);
	  fprintf (makefile,
		   "distdir:\n\tcp *.c *.S Makefile.in @PACKAGE@-@VERSION@/s_%s/\n\n",
		   cur_libname);
	  fprintf (makefile, "mostlyclean:\n\trm -rf *.o lib%s.a\n\n",
		   cur_outlibbasename);
	  fprintf (makefile, "clean: mostlyclean\n\n");
	  fprintf (makefile, "distclean: clean\n\trm Makefile\n\n");
	  fprintf (makefile, "maintainer-clean: distclean\n\n");
	  fprintf (makefile, "installdirs:\n\tmkdir -p %s\n\n",
		   makefileInstallDir ());
	  fprintf (makefile,
		   "install: installdirs\n\tcp lib%s.a %s/lib%s.a\n\n",
		   cur_outlibbasename, makefileInstallDir (),
		   cur_outlibbasename);
	  fprintf (makefile, "uninstall:\n\trm %s/lib%s.a\n\n",
		   makefileInstallDir (), cur_outlibbasename);

	  /* Empty and simple forwarding rules. */
	  fprintf (makefile, "distclean-recursive: distclean\n\n");
	  fprintf (makefile, "install-data:\n\n");
	  fprintf (makefile, "install-exec:\n\n");
	  fprintf (makefile, "install-dvi:\n\n");
	  fprintf (makefile, "install-html:\n\n");
	  fprintf (makefile, "install-info:\n\n");
	  fprintf (makefile, "install-ps:\n\n");
	  fprintf (makefile, "install-pdf:\n\n");
	  fprintf (makefile, "check:\n\n");
	  fprintf (makefile, "installcheck:\n\n");
	  fprintf (makefile, "dvi:\n\n");
	  fprintf (makefile, "pdf:\n\n");
	  fprintf (makefile, "ps:\n\n");
	  fprintf (makefile, "info:\n\n");
	  fprintf (makefile, "html:\n\n");
	  fprintf (makefile, "tags:\n\n");
	  fprintf (makefile, "ctags:\n\n");

	  /* Output some rule overrides. */
	  fprintf (makefile, "%%.o: %%.S\n");
	  fprintf (makefile, "\t@CCAS@ @CCASFLAGS@ -c -o $@ $<\n\n");

	  fprintf (makefile, "%%.o: %%.c\n");
	  fprintf (makefile,
		   "\t@CC@ @CFLAGS@ -D_BUILDING_AGILE_DLLIMP -D__MINGW_EXPORTED_IF_AGILE=\"\" -D__LIBMSVCRT__ -std=gnu99 -D_WIN32_WINNT=0x0f00 -Wall -Wextra -Wformat -Wstrict-aliasing -Wshadow -Wpacked -Winline -Wimplicit-function-declaration -Wmissing-noreturn -Wmissing-prototypes -c -o $@ $<\n\n");
	}
    }
  return makefile;
}

static void
makefileStartGroup_AcAmLibtool (FILE * makefile)
{
  fprintf (makefile, "%slib%s%d_la_SOURCES = \\\n",
	   group_lib_num > 1 ? "\n" : "", cur_libbasename, group_lib_num);
}

static const char *
makefileGroupSuffix (int group_num)
{
  if (group_lib_num_first_emulated != -1
      && group_num >= group_lib_num_first_emulated)
    {
      return "_EMUL_OBJECTS";
    }
  else
    {
      return "_OBJECTS";
    }
}

static void
makefileStartGroup_Ac (FILE * makefile)
{
  fprintf (makefile, "%slib%s%d%s =\n",
	   group_lib_num > 1 ? "\n" : "",
	   cur_outlibbasename,
	   group_lib_num, makefileGroupSuffix (group_lib_num));
}

void
makefileStartGroup (FILE * makefile)
{
  ++group_lib_num;
  group_file_count = 0;
  if (use_am_libtool)
    {
      makefileStartGroup_AcAmLibtool (makefile);
    }
  else
    {
      makefileStartGroup_Ac (makefile);
    }
}

void
makefileStartEmulatedGroups (FILE * makefile)
{
  group_lib_num_first_emulated = group_lib_num;
  makefileStartGroup (makefile);
}

static void
makefilePrintPrologue_AcAmLibtool (FILE * makefile)
{
  int i;

  fprintf (makefile, "\nnoinst_LTLIBRARIES =");
  for (i = 0; i < group_lib_num; ++i)
    {
      fprintf (makefile, " lib%s%d.la", cur_outlibbasename, i + 1);
    }
  fprintf (makefile, "\n\n");
  fprintf (makefile, "lib_LTLIBRARIES = lib%s.la\n", cur_outlibbasename);
  fprintf (makefile, "lib%s_la_SOURCES = \n", cur_outlibbasename);
  fprintf (makefile, "lib%s_la_LIBADD =", cur_outlibbasename);
  for (i = 0; i < group_lib_num; ++i)
    {
      fprintf (makefile, " lib%s%d.la", cur_outlibbasename, i + 1);
    }
  fprintf (makefile, "\n");
}

static void
makefilePrintPrologue_Ac (FILE * makefile)
{
  int i;

  fprintf (makefile, "\nlib%s.a:", cur_outlibbasename);
  for (i = 0; i < group_lib_num; ++i)
    {
      fprintf (makefile, " $(lib%s%d%s)", cur_outlibbasename, i + 1,
	       makefileGroupSuffix (i));
    }
  fprintf (makefile, "\n\t@-rm $@ || true\n");
  for (i = 0; i < group_lib_num; ++i)
    {
      fprintf (makefile, "\t@AR@ cru $@ $(lib%s%d%s)\n", cur_outlibbasename,
	       i + 1, makefileGroupSuffix (i));
    }
  fprintf (makefile, "\t@RANLIB@ $@\n");
}

void
makefilePrintPrologue (FILE * makefile)
{
  if (use_am_libtool)
    {
      makefilePrintPrologue_AcAmLibtool (makefile);
    }
  else
    {
      makefilePrintPrologue_Ac (makefile);
    }
}

void
makefileAddSourceFile (FILE * makefile, const char *source, int isFinalFile)
{
  char *dot = NULL;
  if (++group_file_count > MAX_OBJECTS_PER_GROUP)
    {
      makefileStartGroup (makefile);
    }
  if (group_file_count == MAX_OBJECTS_PER_GROUP)
    {
      isFinalFile = 1;
    }
  if (use_am_libtool)
    {
      fprintf (makefile, "\t%s%s\n", source, isFinalFile ? "" : " \\");
    }
  else
    {
      char *object = (char *) alloca (strlen (source) + 2);
      strcpy (object, source);
      if ((dot = strrchr (object, '.')) != NULL)
	{
	  dot[1] = 'o';
	  dot[2] = '\0';
	}
      fprintf (makefile, "lib%s%d%s += %s\n", cur_outlibbasename,
	       group_lib_num, makefileGroupSuffix (group_lib_num), object);
    }
}
