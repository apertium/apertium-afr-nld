AC_PREREQ(2.52)

AC_INIT([Apertium Afrikaans-Dutch], [0.3.0], [apertium-stuff@lists.sourceforge.net], [apertium-afr-nld], [https://wiki.apertium.org/wiki/Apertium-afr-nld])
AM_INIT_AUTOMAKE

AC_PROG_AWK

AC_CONFIG_HEADER([config])

PKG_CHECK_MODULES(APERTIUM, apertium >= 3.6.0)
PKG_CHECK_MODULES(LTTOOLBOX, lttoolbox >= 3.5.0)
PKG_CHECK_MODULES(CG3, cg3 >= 1.3.0)
PKG_CHECK_MODULES(APERTIUM_LEX_TOOLS, apertium-lex-tools >= 0.2.2)

AC_PATH_PROGS(ZCAT, [gzcat zcat], [false])
AS_IF([test x$ZCAT = xfalse], [AC_MSG_ERROR([You don't have zcat nor gzcat installed])])

m4_ifdef([AP_CHECK_LING],[],[AC_MSG_ERROR([AP_CHECK_LING not defined, is apertium.m4 in ACLOCAL_PATH? See: https://wiki.apertium.org/wiki/Installation_troubleshooting])])

AP_CHECK_LING([1], [apertium-afr], [0.2.0])
AP_CHECK_LING([2], [apertium-nld], [0.2.0])

PKG_CHECK_MODULES(REGTEST, apertium-regtest >= 0.0.1, [],
                  [AC_MSG_WARN([Running tests requires apertium-regtest])])

AP_MKINCLUDE

AC_OUTPUT([Makefile])
