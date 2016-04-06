LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := libxml2 
LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/include/libxml \
	$(LOCAL_PATH)/iconv/include \

LOCAL_CFLAGS := -g -O2 -pedantic     \
	-W -Wformat -Wunused -Wimplicit  \
	-Wreturn-type -Wswitch -Wcomment\
	-Wtrigraphs -Wformat -Wchar-subscripts \
	-Wuninitialized -Wparentheses -Wshadow \
	-Wpointer-arith -Wwrite-strings \
	-Waggregate-return -Wstrict-prototypes \
	-Wmissing-prototypes -Wnested-externs \
	-Winline -Wredundant-decls -Wno-long-long \
	-DHAVE_CONFIG_H


LOCAL_SRC_FILES := \
	src/HTMLparser.c      src/entities.c        src/relaxng.c         src/xmlreader.c       \
	src/HTMLtree.c        src/error.c           src/schematron.c      src/xmlregexp.c       \
	src/SAX.c             src/globals.c         src/threads.c         src/xmlsave.c         \
	src/SAX2.c            src/hash.c            src/tree.c            src/xmlschemas.c      \
	src/buf.c             src/legacy.c          src/uri.c             src/xmlschemastypes.c \
	src/c14n.c            src/list.c            src/valid.c           src/xmlstring.c       \
	src/catalog.c         src/nanoftp.c         src/xinclude.c        src/xmlunicode.c      \
	src/chvalid.c         src/nanohttp.c        src/xlink.c           src/xmlwriter.c       \
	src/debugXML.c        src/parser.c          src/xmlIO.c           src/xpath.c           \
	src/dict.c            src/parserInternals.c src/xmlmemory.c       src/xpointer.c        \
	src/encoding.c        src/pattern.c         src/xmlmodule.c       src/xzlib.c           \

LOCAL_LDLIBS := -lz
LOCAL_SHARED_LIBRARIES := libiconv
include $(BUILD_SHARED_LIBRARY)
include $(LOCAL_PATH)/iconv/Android.mk


