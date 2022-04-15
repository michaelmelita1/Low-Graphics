FINALPACKAGE=1
ARCHS = arm
TARGET = iphone:9.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LowGraphics
LowGraphics_FILES = Tweak.x
LowGraphics_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
include $(THEOS_MAKE_PATH)/aggregate.mk
