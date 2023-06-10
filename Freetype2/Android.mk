LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

FREETYPE_PATH := jni/Freetype2

LOCAL_MODULE := Freetype2       

LOCAL_CFLAGS := -DANDROID_NDK \
                -DFT2_BUILD_LIBRARY=1

BASE_DIR := $(LOCAL_PATH)/src/base
AUTOF_DIR := $(LOCAL_PATH)/src/autofit
TT_DIR := $(LOCAL_PATH)/src/truetype
T1_DIR := $(LOCAL_PATH)/src/type1
CFF_DIR := $(LOCAL_PATH)/src/cff
CID_DIR := $(LOCAL_PATH)/src/cid
PFR_DIR := $(LOCAL_PATH)/src/pfr
T42_DIR := $(LOCAL_PATH)/src/type42
FNT_DIR := $(LOCAL_PATH)/src/winfonts
PCF_DIR := $(LOCAL_PATH)/src/pcf
BDF_DIR := $(LOCAL_PATH)/src/bdf
PSAUX_DIR := $(LOCAL_PATH)/src/psaux
PSNAMES_DIR := $(LOCAL_PATH)/src/psnames
PSHINTER_DIR := $(LOCAL_PATH)/src/pshinter
SFNT_DIR := $(LOCAL_PATH)/src/sfnt
SMOOTH_DIR := $(LOCAL_PATH)/src/smooth
RASTER_DIR := $(LOCAL_PATH)/src/raster
SDF_DIR := $(LOCAL_PATH)/src/sdf
SVG_DIR := $(LOCAL_PATH)/src/svg
GZIP_DIR := $(LOCAL_PATH)/src/gzip
LZW_DIR := $(LOCAL_PATH)/src/lzw

LOCAL_SRC_FILES := $(BASE_DIR)/ftadvanc.c \
            $(BASE_DIR)/ftcalc.c   \
            $(BASE_DIR)/ftcolor.c  \
            $(BASE_DIR)/ftdbgmem.c \
            $(BASE_DIR)/fterrors.c \
            $(BASE_DIR)/ftfntfmt.c \
            $(BASE_DIR)/ftgloadr.c \
            $(BASE_DIR)/fthash.c   \
            $(BASE_DIR)/ftlcdfil.c \
            $(BASE_DIR)/ftobjs.c   \
            $(BASE_DIR)/ftoutln.c  \
            $(BASE_DIR)/ftpsprop.c \
            $(BASE_DIR)/ftrfork.c  \
            $(BASE_DIR)/ftsnames.c \
            $(BASE_DIR)/ftstream.c \
            $(BASE_DIR)/fttrigon.c \
            $(BASE_DIR)/ftutil.c \
            $(BASE_DIR)/ftsystem.c \
            $(BASE_DIR)/ftbitmap.c \
            $(BASE_DIR)/ftdebug.c \
            $(BASE_DIR)/ftinit.c \
            $(AUTOF_DIR)/afblue.c   \
	    $(AUTOF_DIR)/afcjk.c    \
	    $(AUTOF_DIR)/afdummy.c  \
	    $(AUTOF_DIR)/afglobal.c \
	    $(AUTOF_DIR)/afhints.c  \
	    $(AUTOF_DIR)/afindic.c  \
	    $(AUTOF_DIR)/aflatin.c  \
	    $(AUTOF_DIR)/afloader.c \
	    $(AUTOF_DIR)/afmodule.c \
	    $(AUTOF_DIR)/afranges.c \
	    $(AUTOF_DIR)/afshaper.c \
	    $(AUTOF_DIR)/ft-hb.c \
	    $(TT_DIR)/ttdriver.c \
            $(TT_DIR)/ttgload.c  \
            $(TT_DIR)/ttgxvar.c  \
            $(TT_DIR)/ttinterp.c \
            $(TT_DIR)/ttobjs.c   \
            $(TT_DIR)/ttpload.c  \
            $(TT_DIR)/ttsubpix.c \
            $(T1_DIR)/t1parse.c  \
            $(T1_DIR)/t1load.c   \
            $(T1_DIR)/t1driver.c \
            $(T1_DIR)/t1afm.c    \
            $(T1_DIR)/t1gload.c  \
            $(T1_DIR)/t1objs.c \
            $(CFF_DIR)/cffcmap.c  \
	   $(CFF_DIR)/cffdrivr.c \
	   $(CFF_DIR)/cffgload.c \
	   $(CFF_DIR)/cffload.c  \
	   $(CFF_DIR)/cffobjs.c  \
	   $(CFF_DIR)/cffparse.c \
	   $(CID_DIR)/cidparse.c \
	  $(CID_DIR)/cidload.c  \
	  $(CID_DIR)/cidriver.c \
	  $(CID_DIR)/cidgload.c \
	  $(CID_DIR)/cidobjs.c \
	  $(PFR_DIR)/pfrload.c  \
	 $(PFR_DIR)/pfrgload.c \
	 $(PFR_DIR)/pfrcmap.c  \
	 $(PFR_DIR)/pfrdrivr.c \
	 $(PFR_DIR)/pfrsbit.c  \
	 $(PFR_DIR)/pfrobjs.c \
	 $(T42_DIR)/t42objs.c  \
	$(T42_DIR)/t42parse.c \
	$(T42_DIR)/t42drivr.c \
	$(FNT_DIR)/winfnt.c \
	$(PCF_DIR)/pcfdrivr.c \
       $(PCF_DIR)/pcfread.c  \
       $(PCF_DIR)/pcfutil.c \
       $(BDF_DIR)/bdflib.c \
       $(BDF_DIR)/bdfdrivr.c \
       $(PSAUX_DIR)/psobjs.c   \
	$(PSAUX_DIR)/t1decode.c \
	$(PSAUX_DIR)/t1cmap.c   \
	$(PSAUX_DIR)/afmparse.c \
	$(PSAUX_DIR)/psconv.c   \
	$(PSAUX_DIR)/psauxmod.c \
	$(PSAUX_DIR)/psarrst.c \
	$(PSAUX_DIR)/psblues.c \
	$(PSAUX_DIR)/pserror.c \
	$(PSAUX_DIR)/psfont.c  \
	$(PSAUX_DIR)/psft.c    \
	$(PSAUX_DIR)/pshints.c \
	$(PSAUX_DIR)/psintrp.c \
	$(PSAUX_DIR)/psread.c  \
	$(PSAUX_DIR)/psstack.c \
	$(PSAUX_DIR)/cffdecode.c \
	$(PSNAMES_DIR)/psmodule.c \
	$(PSHINTER_DIR)/pshalgo.c \
	$(PSHINTER_DIR)/pshglob.c \
	$(PSHINTER_DIR)/pshmod.c  \
	$(PSHINTER_DIR)/pshrec.c \
	$(SFNT_DIR)/pngshim.c   \
	$(SFNT_DIR)/sfdriver.c  \
	$(SFNT_DIR)/sfobjs.c    \
	$(SFNT_DIR)/sfwoff.c    \
	$(SFNT_DIR)/sfwoff2.c   \
	$(SFNT_DIR)/ttbdf.c     \
	$(SFNT_DIR)/ttcmap.c    \
	$(SFNT_DIR)/ttcolr.c    \
	$(SFNT_DIR)/ttsvg.c     \
	$(SFNT_DIR)/ttcpal.c    \
	$(SFNT_DIR)/ttkern.c    \
	$(SFNT_DIR)/ttload.c    \
	$(SFNT_DIR)/ttmtx.c     \
	$(SFNT_DIR)/ttpost.c    \
	$(SFNT_DIR)/ttsbit.c    \
	$(SFNT_DIR)/woff2tags.c \
	$(SMOOTH_DIR)/ftgrays.c  \
        $(SMOOTH_DIR)/ftsmooth.c \
        $(RASTER_DIR)/ftraster.c \
        $(RASTER_DIR)/ftrend1.c \
        $(RASTER_DIR)/raster/ftmisc.h \
        $(SDF_DIR)/ftsdfrend.c   \
       $(SDF_DIR)/ftsdf.c       \
       $(SDF_DIR)/ftbsdf.c      \
       $(SDF_DIR)/ftsdfcommon.c \
       $(SVG_DIR)/ftsvg.c \
       $(GZIP_DIR)/adler32.c  \
	$(GZIP_DIR)/crc32.c    \
	$(GZIP_DIR)/crc32.h    \
	$(GZIP_DIR)/ftzconf.h  \
	$(GZIP_DIR)/infback.c  \
	$(GZIP_DIR)/inffast.c  \
	$(GZIP_DIR)/inffast.h  \
	$(GZIP_DIR)/inffixed.h \
	$(GZIP_DIR)/inflate.c  \
	$(GZIP_DIR)/inflate.h  \
	$(GZIP_DIR)/inftrees.c \
	$(GZIP_DIR)/inftrees.h \
	$(GZIP_DIR)/zlib.h     \
	$(GZIP_DIR)/zutil.c    \
	$(GZIP_DIR)/zutil.h \
	$(GZIP_DIR)/ftgzip.c \
	$(LZW_DIR)/ftlzw.c \
        $(LZW_DIR)/ftzopen.c


LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/include
     #\
    #external/libpng \
    #external/zlib

LOCAL_CFLAGS += -fPIC -DPIC
LOCAL_CFLAGS += "-DDARWIN_NO_CARBON"
LOCAL_CFLAGS += "-DFT2_BUILD_LIBRARY"
#LOCAL_SHARED_LIBRARIES += libpng libz

LOCAL_LDLIBS := -ldl -llog -lz


include $(BUILD_SHARED_LIBRARY)
