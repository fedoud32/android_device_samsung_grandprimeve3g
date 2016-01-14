## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := coreprimeve3g

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/coreprimeve3g/full_coreprimeve3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_MODEL := SM-G361H
PRODUCT_BRAND := samsung
PRODUCT_NAME := cm_coreprimeve3g
PRODUCT_DEVICE := coreprimeve3g
PRODUCT_MANUFACTURER := samsung
