ARCHS = armv7 
include theos/makefiles/common.mk

TWEAK_NAME = AutoUnlock
AutoUnlock_FILES = Tweak.xm
AutoUnlock_FRAMEWORKS = UIKit QuartzCore CoreGraphics
AutoUnlock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
