# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Tokyo_TF device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := tcl
PRODUCT_DEVICE := Tokyo_TF
PRODUCT_MANUFACTURER := tcl
PRODUCT_NAME := lineage_Tokyo_TF
PRODUCT_MODEL := A508DL

PRODUCT_GMS_CLIENTID_BASE := android-tcl
TARGET_VENDOR := tcl
TARGET_VENDOR_PRODUCT_NAME := Tokyo_TF
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="TOKYO_TF_arm64-user 10 QP1A.190711.020 vC58-0 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := TCL/A508DL/Tokyo_TF:10/QP1A.190711.020/vC58-0:user/release-keys
