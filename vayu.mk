#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro
PRODUCT_MANUFACTURER := Xiaomi


TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_PIXEL_CHARGER_IMAGES := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := true
CUSTOM_BUILD_TYPE := Official

# Lawnchair
$(call inherit-product, vendor/lawnchair/lawnchair.mk)

# Device Settings
$(call inherit-product-if-exists, vendor/xiaomi/devicesettings/config.mk)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_OVERRIDE_FINGERPRINT := google/redfin/redfin:12/SQ3A.220705.003.A1/8672226:user/release-keys
