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

FILE *makefileCreate (const char *pth, const char *vpath);
void makefileStartGroup (FILE * makefile);
void makefileStartEmulatedGroups (FILE * makefile);
void makefilePrintPrologue (FILE * makefile);
void makefileAddSourceFile (FILE * makefile, const char *source,
			    int isFinalFile);
