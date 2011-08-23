/* pyMPI_Config.h.  Generated by configure.  */
/* pyMPI_Config.h.in.  Generated from configure.ac by autoheader.  */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `efence' library (-lefence). */
/* #undef HAVE_LIBEFENCE */

/* Define to 1 if you have the `m' library (-lm). */
#define HAVE_LIBM 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the `mpc_flush' function. */
/* #undef HAVE_MPC_FLUSH */

/* Define to 1 if you have the `mpc_isatty' function. */
/* #undef HAVE_MPC_ISATTY */

/* Are MPI_Comm_get_name and MPI_Comm_set_name defined by the MPI
   implementation? */
#define HAVE_MPI_COMM_NAME_OPERATIONS 

/* Is MPI_File_close defined by the MPI implementation? */
#define HAVE_MPI_FILE_OPERATIONS 

/* Is MPI_Finalized defined by the MPI implementation? */
#define HAVE_MPI_FINALIZED 

/* Is MPI_Initialized defined by the MPI implementation? */
#define HAVE_MPI_INITIALIZED 

/* Define to 1 if you have the <pm_util.h> header file. */
/* #undef HAVE_PM_UTIL_H */

/* Define to 1 if you have the `PyOS_StdioReadline' function. */
#define HAVE_PYOS_STDIOREADLINE 1

/* Define to 1 if you have the `Py_ReadOnlyBytecodeFlag' function. */
/* #undef HAVE_PY_READONLYBYTECODEFLAG */

/* Does Python use int or Py_ssize_t */
#define HAVE_PY_SSIZE_T 

/* Define to 1 if you have the `setlinebuf' function. */
#define HAVE_SETLINEBUF 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/param.h> header file. */
#define HAVE_SYS_PARAM_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Name of package */
#define PACKAGE "pyMPI"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define PACKAGE_NAME ""

/* Define to the full name and version of this package. */
#define PACKAGE_STRING ""

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME ""

/* Define to the version of this package. */
#define PACKAGE_VERSION ""

/* Do not allow MPI_Cancel() on isend requests */
#define PYMPI_BADCANCEL 0

/* Name of MPI enabled C compiler */
#define PYMPI_COMPILER "/usr/local/bin/mpiicc"

/* Modified compiler flags */
#define PYMPI_COMPILER_FLAGS "-g -O2 -fPIC -I/usr/apps/python/include/pyMPI2.6 -I/usr/gapps/python/chaos_4_x86_64/opt-2.6/include/python2.6"

/* Replacement function for get_makefile_filename */
#define PYMPI_GET_MAKEFILE_FILENAME_DEF "def __parallel_get_makefile_filename(): return '/usr/apps/python/lib/pyMPI2.6/augmentedMakefile'\n"

/* Does this Python include Numeric? */
#define PYMPI_HAS_NUMERIC 

/* Does this Python include Numpy? */
#define PYMPI_HAS_NUMPY 

/* Can we get local NPROCESSORS? */
#define PYMPI_HAVE_SYSCONF_NPROCESSORS 

/* Installation prefix */
#define PYMPI_INCLUDEDIR "/usr/apps/python/include/pyMPI2.6"

/* Use simplified isatty() */
#define PYMPI_ISATTY 1

/* Library location */
#define PYMPI_LIBDIR "/usr/apps/python/lib/pyMPI2.6"

/* Name of the MPI enabled C compiler for linking */
#define PYMPI_LINKER "/usr/local/bin/mpiicc"

/* Extra link flags needed to build */
#define PYMPI_LINKER_FLAGS " -L/usr/apps/python/lib/pyMPI2.6 -lpyMPI -lm -Wl,-rpath=/g/g0/lee218/src/pynamic/pynamic-pyMPI-2.6a1 -L/g/g0/lee218/src/pynamic/pynamic-pyMPI-2.6a1 -lutility0 -lutility1 -lmodule0 -lmodule1 -lmodule2   -L/usr/apps/python/lib/python2.6/config -lpython2.6 -Wl,-rpath,/usr/gapps/python/chaos_4_x86_64/opt-2.6/lib -Xlinker -export-dynamic   -lpthread -ldl  -lutil  "

/* Are we running in an OSX environment? */
/* #undef PYMPI_MACOSX */

/* Major release */
#define PYMPI_MAJOR "2"

/* Are we running in MS Windows environment? */
/* #undef PYMPI_MICROSOFT_WINDOWS */

/* Minor release */
#define PYMPI_MINOR "6"

/* Installation prefix */
#define PYMPI_PREFIX "/usr/apps/python"

/* Issue a newline after prompt */
#define PYMPI_PROMPT_NL 1

/* Directory where python library files live */
#define PYMPI_PYTHON_CONFIGDIR "/usr/apps/python/lib/python2.6/config"

/* the "-l" name of python library */
#define PYMPI_PYTHON_LIBRARY "python2.6"

/* Sub versioning a=alpha, b=beta, .x=release */
#define PYMPI_RELEASE "a1"

/* Installation directory */
#define PYMPI_SITEDIR "/usr/apps/python/lib/pyMPI2.6/site-packages"

/* PACKAGE Short version */
#define PYMPI_VERSION_NAME "pyMPI2.6"

/* Short version */
#define PYMPI_VERSION_SHORT "2.6"

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Version number of package */
#define VERSION "2.6a1"

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */
