#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
# Use AM_MAINTANER_MODE somewhere in this file once reconfigurations settle down.

AC_PREREQ([2.69])
AC_INIT([mingw-w64-runtime-crtagile],[4.0b],[mingw-w64-public@lists.sourceforge.net])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_SRCDIR([ms.def])
AM_INIT_AUTOMAKE([1.14 foreign subdir-objects])
AM_MAINTAINER_MODE

AC_CANONICAL_HOST

# Checks for programs.
# Checks for headers, libs, etc need to utilize the sysroot... no idea how
AC_NO_EXECUTABLES
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_RANLIB
AC_CHECK_TOOL([DLLTOOL], [dlltool], [:])
AM_PROG_AR
AM_PROG_AS
dnl Remove this once automake fixes the bug where AS is not defined according to $host
AC_CHECK_TOOL([AS], [as], [:])
dnl ---
AM_PROG_CC_C_O

AC_MSG_CHECKING([whether to build the Win32 libraries])
AC_ARG_ENABLE([lib32],
  [AS_HELP_STRING([--enable-lib32],
    [Build the Win32 libraries])],
  [],
  [
    _save_CFLAGS="$CFLAGS"
    CFLAGS="$CFLAGS -m32"
    AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[const char test[(sizeof(void*)==4)?0:-1];]],[])],
      [enable_lib32=yes],
      [enable_lib32=no])
    CFLAGS="$_save_CFLAGS"])
AC_MSG_RESULT([$enable_lib32])
AS_CASE([$enable_lib32],
  [no],[],
  [yes],[AS_VAR_SET([LIB32])],
  [AC_MSG_ERROR([invalid argument.  Must be either yes or no.])])
AM_CONDITIONAL([LIB32], [AS_VAR_TEST_SET([LIB32])])

AC_MSG_CHECKING([whether to build the Win64 libraries])
AC_ARG_ENABLE([lib64],
  [AS_HELP_STRING([--enable-lib64],
    [Build the Win64 libraries])],
  [],
  [
    _save_CFLAGS="$CFLAGS"
    CFLAGS="$CFLAGS -m64"
    AC_COMPILE_IFELSE([AC_LANG_PROGRAM([[const char test[(sizeof(void*)==8)?0:-1];]],[])],
      [enable_lib64=yes],
      [enable_lib64=no])
    CFLAGS="$_save_CFLAGS"])
AC_MSG_RESULT([$enable_lib64])
AS_CASE([$enable_lib64],
  [no],[],
  [yes],[AS_VAR_SET([LIB64])],
  [AC_MSG_ERROR([invalid argument.  Must be either yes or no.])])
AM_CONDITIONAL([LIB64], [AS_VAR_TEST_SET([LIB64])])

AC_MSG_CHECKING([whether to build the WinARM32 libraries])
AC_ARG_ENABLE([libarm32],
  [AS_HELP_STRING([--enable-libarm32],
    [Build the WinARM32 libraries])],
  [],
  [AS_CASE([$host_cpu],
    [armv7*],[enable_libarm32=yes],
    [*],[enable_libarm32=no])
  ])
AC_MSG_RESULT([$enable_libarm32])
AS_CASE([$enable_libarm32],
  [no],[],
  [yes],[AS_VAR_SET([LIBARM32])],
  [AC_MSG_ERROR([invalid argument.  Must be either yes or no.])])
AM_CONDITIONAL([LIBARM32], [AS_VAR_TEST_SET([LIBARM32])])

AS_VAR_IF([enable_libarm32],[yes],[
  AS_IF([AS_VAR_TEST_SET([LIB32]) || AS_VAR_TEST_SET([LIB64])],
    [AC_MSG_WARN([Building the runtime to use libarm32 with lib32 or lib64 is unsupported.])])])

AS_CASE([$host_cpu],
  [x86_64],[
    lib64suffx=lib
    lib32suffx=lib32],
  [i*86],[
    lib64suffx=lib64
    lib32suffx=lib],
  [
    lib64suffx=lib64
    lib32suffx=lib32]
)

AS_VAR_IF([enable_w32api],[yes],[
  lib64suffx=$lib64suffx/w32api
  lib32suffx=$lib32suffx/w32api
])

AC_SUBST([LIB64SUFFIXDIR],[$lib64suffx])
AC_SUBST([LIB32SUFFIXDIR],[$lib32suffx])

# Checks for features.

AC_MSG_CHECKING([whether to enable lazy mode])
AC_ARG_ENABLE([lazy-mode],
  [AS_HELP_STRING([--enable-lazy-mode],
    [Enable creation of lazy-mode agile crt])],
  [],
  [enable_lazy_mode=no])
AS_CASE([$enable_lazy_mode],
  [yes],[],
  [no],[],
  [AC_MSG_ERROR([Please only use --enable-lazy-mode or --disable-lazy-mode, without any additional arguments.])])
AM_CONDITIONAL([LAZY_MODE],[test $enable_lazy_mode = yes])
AC_MSG_RESULT([$enable_lazy_mode])

AC_CONFIG_FILES([Makefile s_msvcrt.dll/Makefile])
AC_OUTPUT

AC_MSG_NOTICE([])
AC_MSG_NOTICE([])
AC_MSG_NOTICE([])
AC_MSG_NOTICE([------------------------------------------------------------------------])
AC_MSG_NOTICE([$PACKAGE $VERSION])
AC_MSG_NOTICE([------------------------------------------------------------------------])
AC_MSG_NOTICE([])
AC_MSG_NOTICE([])
AC_MSG_NOTICE([Configuration Options Summary:])
AC_MSG_NOTICE([])
AC_MSG_NOTICE([  WinARM32 crtagile....: $enable_libarm32])
AC_MSG_NOTICE([  Win32 crtagile.......: $enable_lib32])
AC_MSG_NOTICE([  Win64 crtagile.......: $enable_lib64])
AC_MSG_NOTICE([])
