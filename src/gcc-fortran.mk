# GCC fortran

PKG             := gcc-fortran
$(PKG)_VERSION  := 4.4.0
$(PKG)_CHECKSUM := 5f9e32d9061937e7706d35d2d5458675352b1368
$(PKG)_SUBDIR   := gcc-$($(PKG)_VERSION)
$(PKG)_FILE     := gcc-fortran-$($(PKG)_VERSION).tar.bz2
$(PKG)_WEBSITE  := http://gcc.gnu.org/
$(PKG)_URL      := http://$(SOURCEFORGE_MIRROR)/tdm-gcc/$($(PKG)_FILE)
$(PKG)_DEPS     :=

define $(PKG)_UPDATE
    $(call SOURCEFORGE_FILES,http://sourceforge.net/projects/tdm-gcc/files/Sources/) | \
    $(SED) -n 's,.*gcc-fortran-\([0-9][^>]*\)\.tar.*,\1,p' | \
    tail -1
endef
