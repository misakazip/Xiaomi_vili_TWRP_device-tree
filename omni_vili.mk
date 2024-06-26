#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from vili device
$(call inherit-product, device/xiaomi/vili/device.mk)

PRODUCT_DEVICE := vili
PRODUCT_NAME := omni_vili
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2107113SC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vili-user 13 RKQ1.211001.001 V14.0.5.0.TKDJPXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vili/vili:13/RKQ1.211001.001/V14.0.5.0.TKDJPXM:user/release-keys
