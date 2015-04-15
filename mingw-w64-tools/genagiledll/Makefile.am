bin_PROGRAMS = genagiledllstub

genagiledllstub_SOURCES = \
  src/lexdef.c src/output.c src/token.h

genagiledllstub_CFLAGS = -O0 -g -std=gnu99 -Wall -Wextra -Wshadow -Wformat -Wpacked -Wredundant-decls -Winline -pedantic -Wno-pedantic-ms-format -Wmissing-declarations -Wredundant-decls -Wimplicit-function-declaration -Wmissing-noreturn -Wmissing-prototypes -Wstrict-aliasing=2

#" -Wstrict-aliasing=2 -Wsystem-headers "

DISTCHECK_CONFIGURE_FLAGS = --host=$(host_triplet)
