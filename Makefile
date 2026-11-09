TARGET := iphone:clang:15.8:15.0
ARCHS := arm64
THEOS_PACKAGE_SCHEME := rootless
INSTALL_TARGET_PROCESSES := TikTok

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := QTok

QTok_FILES := Tweak.x
QTok_CFLAGS := -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
