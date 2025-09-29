# -*- Mode: Makefile -*-
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


INCLUDED_AUTOCONF_MK = 1
USE_AUTOCONF	= 1

MOZILLA_CLIENT	= 

prefix		= /mingw64
exec_prefix	= ${prefix}
bindir		= ${exec_prefix}/bin
includedir	= ${prefix}/include/nspr
libdir		= ${exec_prefix}/lib
datarootdir	= ${prefix}/share
datadir		= ${datarootdir}

dist_prefix	= ${MOD_DEPTH}/dist
dist_bindir	= ${dist_prefix}/bin
dist_includedir = ${dist_prefix}/include/nspr
dist_libdir	= ${dist_prefix}/lib

DIST		= $(dist_prefix)

RELEASE_OBJDIR_NAME = WIN954.0_64_OPT.OBJ
OBJDIR_NAME	= .
OBJDIR		= $(OBJDIR_NAME)
# We do magic with OBJ_SUFFIX in config.mk, the following ensures we don't
# manually use it before config.mk inclusion
OBJ_SUFFIX	= $(error config/config.mk needs to be included before using OBJ_SUFFIX)
_OBJ_SUFFIX	= o
LIB_SUFFIX	= a
DLL_SUFFIX	= dll
ASM_SUFFIX	= s
MOD_NAME	= nspr20

MOD_MAJOR_VERSION = 4
MOD_MINOR_VERSION = 38
MOD_PATCH_VERSION = 0

LIBNSPR		= -L$(dist_libdir) -lnspr$(MOD_MAJOR_VERSION)
LIBPLC		= -L$(dist_libdir) -lplc$(MOD_MAJOR_VERSION)

CROSS_COMPILE	= 
MOZ_OPTIMIZE	= 1
MOZ_DEBUG	= 
MOZ_DEBUG_SYMBOLS = 

USE_CPLUS	= 
USE_IPV6	= 
USE_N32		= 
USE_X32		= 
USE_64		= 1
ENABLE_STRIP	= 

USE_PTHREADS	= 
USE_BTHREADS	= 
PTHREADS_USER	= 
CLASSIC_NSPR	= 

AS		= $(CC)
ASFLAGS		= $(CFLAGS)
CC		= gcc -std=gnu11 -mwindows
CCC		=  -mwindows
NS_USE_GCC	= 1
GCC_USE_GNU_LD	= 
MSC_VER		= 
AR		= echo not_ar
AR_FLAGS	= cr $@
LD		= /mingw64/bin/ld
RANLIB		= ranlib
PERL		= echo not_perl
RC		= /mingw64/bin/windres
RCFLAGS		= -O coff --use-temp-file
STRIP		= /mingw64/bin/strip
NSINSTALL	= nsinstall
FILTER		= 
IMPLIB		= 
CYGWIN_WRAPPER	= 
MT		= 

OS_CPPFLAGS	= 
OS_CFLAGS	= $(OS_CPPFLAGS)  -pthread -O2 $(DSO_CFLAGS)
OS_CXXFLAGS	= $(OS_CPPFLAGS)  -pthread -O2 $(DSO_CFLAGS)
OS_LIBS         =  
OS_LDFLAGS	= 
OS_DLLFLAGS	= 
DLLFLAGS	= 
EXEFLAGS  = 
OPTIMIZER	= 

PROFILE_GEN_CFLAGS  = -fprofile-generate
PROFILE_GEN_LDFLAGS = -fprofile-generate
PROFILE_USE_CFLAGS  = -fprofile-use -fprofile-correction -Wcoverage-mismatch
PROFILE_USE_LDFLAGS = -fprofile-use

MKSHLIB		= $(CC) -shared -Wl,--export-all-symbols -Wl,--out-implib -Wl,$(IMPORT_LIBRARY) $(DLLBASE) -o $(subst $(OBJDIR)/,,$(SHARED_LIBRARY))
WRAP_LDFLAGS	= 
DSO_CFLAGS	= 
DSO_LDOPTS	= 

RESOLVE_LINK_SYMBOLS = 1

HOST_CC		= gcc -std=gnu11
HOST_CFLAGS	= 
HOST_LDFLAGS	= 

DEFINES		=  -UDEBUG -UWINNT -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DPACKAGE_URL=\"\" -DNDEBUG=1 -DXP_PC=1 -DWIN32=1 -DWIN95=1 -D_PR_GLOBAL_THREADS_ONLY=1 -D_AMD64_=1 -DHAVE_STRERROR=1

MDCPUCFG_H	= _win95.cfg
PR_MD_CSRCS	= 
PR_MD_ASFILES	= 
PR_MD_ARCH_DIR	= windows
CPU_ARCH	= x86

OS_TARGET	= WIN95
OS_ARCH		= WINNT
OS_RELEASE	= 4.0
OS_TEST		= i686

NOSUCHFILE	= /no-such-file
AIX_LINK_OPTS	= 
MOZ_OBJFORMAT	= 
ULTRASPARC_LIBRARY = 

OBJECT_MODE	= 
ifdef OBJECT_MODE
export OBJECT_MODE
endif

VISIBILITY_FLAGS = 
WRAP_SYSTEM_INCLUDES = 

MACOSX_DEPLOYMENT_TARGET = 
ifdef MACOSX_DEPLOYMENT_TARGET
export MACOSX_DEPLOYMENT_TARGET
endif

MACOS_SDK_DIR	= 


NEXT_ROOT	= 
ifdef NEXT_ROOT
export NEXT_ROOT
endif
