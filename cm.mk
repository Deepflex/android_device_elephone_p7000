$(call inherit-product, device/elephone/p7000/full_p7000.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p7000
PRODUCT_NAME := cm_p7000
PRODUCT_BRAND := Elephone
PRODUCT_MODEL := Elephone P7000
PRODUCT_MANUFACTURER := Elephone
