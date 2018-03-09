#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.


AC_PREREQ(2.52)

m4_define([required_apertium_version], [3.4.0])

AC_INIT([apertium-afr-nld], [0.2.0], [otte.pim@gmail.com])
AM_INIT_AUTOMAKE([apertium-afr-nld], [0.2.0], no-define)
AC_PROG_LN_S
AC_PROG_AWK
AC_CONFIG_HEADER([config])

PKG_CHECK_MODULES(APERTIUM,   apertium >= required_apertium_version, [], [PKG_CHECK_MODULES(APERTIUM,   apertium-3.4 >= required_apertium_version)])

AC_OUTPUT([Makefile])
