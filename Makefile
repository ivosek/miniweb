# Makefile
PROJECTROOT     := $(PWD)/..
DEFINES         = 
ALTIVECFLAGS    =
LDFLAGS         =

LIBNAME =libminiweb.a
SRCS = httppil.c http.c httpxml.c httphandler.c

ifdef APPMINI
APPNAME = httpd
APPSRCS = httpmin.c
else
APPNAME = miniweb$(EXE)
APPSRCS = miniweb.c
endif
APPDEPS = $(LIBNAME)

ifndef NOPOST
SRCS    += httppost.c
DEFINES += -DHTTPPOST
endif

ifdef AUTH
SRCS    += httpauth.c
DEFINES += -DHTTPAUTH
endif

ifndef THREAD
DEFINES += -DNOTHREAD
endif

ifdef MPD
DEFINES += -D_MPD
SRCS    += mpd.c procpil.c
endif

ifdef VOD
DEFINES += -D_VOD
SRCS    += httpvod.c crc32.c
endif

ifdef COMSPEC
LDFLAGS += -lws2_32
else
ifdef THREAD
LDFLAGS += -lpthread
endif
endif


include ../common.mk

default: $(DEPEND) $(LIBNAME)
