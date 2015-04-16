bin_PROGRAMS = genagiledllstub

genagiledllstub_SOURCES = \
  src/lexdef.c \
  src/output.c src/output.h \
  src/makefile.c src/makefile.h \
  src/token.h

genagiledllstub_CFLAGS = -std=gnu99 -Wall -Wextra -Wshadow -Wformat -Wpacked -Wredundant-decls -Winline -pedantic -Wno-pedantic-ms-format -Wmissing-declarations -Wredundant-decls -Wimplicit-function-declaration -Wmissing-noreturn -Wmissing-prototypes -Wstrict-aliasing=2

#" -Wstrict-aliasing=2 -Wsystem-headers "

DISTCHECK_CONFIGURE_FLAGS = --host=$(host_triplet)
