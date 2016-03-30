# Release name
PRODUCT_RELEASE_NAME := p7000

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/elephone/p7000/device_p7000.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Configure hwui memory
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p7000
PRODUCT_NAME := cm_p7000
PRODUCT_BRAND := elephone
PRODUCT_MODEL := p7000
PRODUCT_MANUFACTURER := elephone
