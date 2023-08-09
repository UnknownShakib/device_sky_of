#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := sky

# Inherit from those products. Most specific first.
# 引用默认的编译配置文件，core_64_bit必须先于其他引用，否则不生效
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Enable virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from sky device
$(call inherit-product, device/xiaomi/sky/device.mk)

PRODUCT_DEVICE := sky
PRODUCT_NAME := twrp_sky
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23076RA4BC
PRODUCT_MANUFACTURER := Xiaomi
#PRODUCT_RELEASE_NAME := Redmi Note 12R

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sky-user 13 SKQ1.220303.001 V14.0.04.0.TMNCNXM release-keys"

BUILD_FINGERPRINT := Redmi/sky/sky:13/SKQ1.220303.001/V14.0.04.0.TMNCNXM:user/release-keys
