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

FILE *makefileCreate (const char * pth)
{
  FILE *makefile = NULL;
  char *ext = NULL;
  if (use_am_libtool) {
    ext = ".am";
  } else {
    ext = ".in";
  }

  makefile = fopen (unifyCat (pth, unifyCat ("Makefile", ext)), "w");
  if (makefile != NULL) {
      printHeader (makefile, "#", "");
      if (use_am_libtool == 0) {

          /* http://www.gnu.org/software/automake/manual/automake.html#Third_002dParty-Makefiles */
          fprintf (makefile, "all: lib%s.a\n\n", cur_libbasename);
          fprintf (makefile, "distdir:\n\tcp *.c *.S Makefile.in @PACKAGE@-@VERSION@/s_%s/\n\n", cur_libname);
          fprintf (makefile, "mostlyclean:\n\trm -rf *.o lib%s.a\n\n", cur_libbasename);
          fprintf (makefile, "clean: mostlyclean\n\n");
          fprintf (makefile, "distclean: clean\n\trm Makefile\n\n");
          fprintf (makefile, "maintainer-clean: distclean\n\n");
          fprintf (makefile, "installdirs:\n\tmkdir -p @libdir@/s_%s\n\n", cur_libname);
          fprintf (makefile, "install:\n\tcp lib%s.a @libdir@/s_%s/lib%s.a\n\n", cur_libbasename, cur_libname, cur_libbasename);
          fprintf (makefile, "uninstall:\n\trm @libdir@/s_%s/lib%s.a\n\n", cur_libbasename, cur_libname);

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
          fprintf (makefile, "\t@ac_ct_CC@ @CFLAGS@ -c -o $@ $<\n\n");
      }
  }
  return makefile;
}

static void makefileStartGroupAmLibtool (FILE *makefile)
{
  fprintf (makefile, "%slib%s%d_la_SOURCES = \\\n", group_lib_num > 1 ? "\n" : "", cur_libbasename, group_lib_num);
}

static void makefileStartGroupIn (FILE *makefile)
{
  fprintf (makefile, "%slib%s%d_OBJECTS =\n", group_lib_num > 1 ? "\n" : "", cur_libbasename, group_lib_num);
}

void makefileStartGroup (FILE *makefile)
{
    ++group_lib_num;
    group_file_count = 0;
    if (use_am_libtool) {
        makefileStartGroupAmLibtool (makefile);
    } else {
        makefileStartGroupIn (makefile);
    }
}

static void makefilePrintPrologueAmLibtool (FILE *makefile)
{
  int i;
  fprintf (makefile, "\nnoinst_LTLIBRARIES =");
  for (i = 0; i < group_lib_num; ++i) {
      fprintf (makefile, " lib%s%d.la", cur_libbasename, i + 1);
  }
  fprintf (makefile, "\n\n");
  fprintf (makefile, "lib_LTLIBRARIES = lib%s.la\n", cur_libbasename);
  fprintf (makefile, "lib%s_la_SOURCES = \n", cur_libbasename);
  fprintf (makefile, "lib%s_la_LIBADD =", cur_libbasename);
  for (i = 0; i < group_lib_num; ++i) {
      fprintf (makefile, " lib%s%d.la", cur_libbasename, i + 1);
  }
  fprintf (makefile, "\n");
}

static void makefilePrintPrologueIn (FILE *makefile)
{
  int i;
  fprintf (makefile, "\nlib%s.a:", cur_libbasename);
  for (i = 0; i < group_lib_num; ++i) {
      fprintf (makefile, " $(lib%s%d_OBJECTS)", cur_libbasename, i + 1);
  }
  fprintf (makefile, "\n\t@-test -f lib%s.a && rm lib%s.a\n", cur_libbasename, cur_libbasename);
  for (i = 0; i < group_lib_num; ++i) {
      fprintf (makefile, "\t@ac_ct_AR@ cru lib%s.a $(lib%s%d_OBJECTS)\n", cur_libbasename, cur_libbasename, i + 1);
  }
  fprintf (makefile, "\t@RANLIB@ $@\n\n");
}

void makefilePrintPrologue (FILE *makefile)
{
  if (use_am_libtool) {
      makefilePrintPrologueAmLibtool (makefile);
  } else {
      makefilePrintPrologueIn (makefile);
  }
}

void makefileAddSourceFile (FILE * makefile, const char * source, int isFinalFile)
{
    char *dot = NULL;
    if (++group_file_count > MAX_OBJECTS_PER_GROUP) {
        makefileStartGroup (makefile);
    }
    if (group_file_count == MAX_OBJECTS_PER_GROUP) {
        isFinalFile = 1;
    }
    if (use_am_libtool) {
      fprintf (makefile, "\t%s%s\n", source, isFinalFile ? "" : " \\");
    } else {
      char * object = (char *)alloca (strlen(source) + 2);
      strcpy (object, source);
      if ((dot = strrchr(object, '.')) != NULL) {
          dot[1] = 'o';
          dot[2] = '\0';
      }
      fprintf (makefile, "lib%s%d_OBJECTS += %s\n", cur_libbasename, group_lib_num, object);
    }
}