# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from sp9820e_1h10 device
$(call inherit-product, device/duoqin/sp9820e_1h10/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sp9820e_1h10
PRODUCT_NAME := omni_sp9820e_1h10
PRODUCT_BRAND := QIN
PRODUCT_MODEL := Qin 1s+
PRODUCT_MANUFACTURER := duoqin
