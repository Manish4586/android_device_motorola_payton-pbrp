# Release name
PRODUCT_RELEASE_NAME := payton

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw	

PRODUCT_DEVICE := payton
PRODUCT_NAME := omni_payton
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto X4
PRODUCT_MANUFACTURER := Motorola
