TARGET := iphone:clang:latest:14.0
ARCHS := arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Lanchu

Lanchu_FILES = $(wildcard src/*.m)
Lanchu_CFLAGS = -fobjc-arc -I src \
	-Wno-error \
	-Wno-deprecated-declarations -Wno-unused-function -Wno-unused-variable \
	-Wno-objc-method-access -Wno-undeclared-selector -Wno-incompatible-pointer-types \
	-Wno-format -Wno-nullability-completeness -Wno-nonnull \
	-Wno-missing-declarations -Wno-objc-property-no-attribute \
	-Wno-objc-missing-super-calls -Wno-incomplete-implementation \
	-Wno-protocol -Wno-documentation -Wno-unguarded-availability \
	-Wno-objc-root-class -Wno-unused-value -Wno-unused-but-set-variable
Lanchu_FRAMEWORKS = UIKit Foundation CoreGraphics QuartzCore ImageIO AVFoundation \
	MediaPlayer IOKit Vision Security CoreMedia CoreFoundation
Lanchu_LDFLAGS = -undefined dynamic_lookup
Lanchu_CODESIGN_FLAGS = -Sentitlements.plist

include $(THEOS_MAKE_PATH)/tweak.mk
