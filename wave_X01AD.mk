#
# Copyright (C) 2020-2021 Wave-OS
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/asus/X01AD

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit common WaveOS stuff.
$(call inherit-product, vendor/wave/configs/common.mk)
TARGET_BOOT_ANIMATION_RES := 720

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_DEVICE := X01AD
PRODUCT_NAME := wave_X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01AD
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="msm8953_64-user 10 WW_Phone-202005071625 17.2018.2004.31-20200507 release-keys"
BUILD_FINGERPRINT := google/crosshatch/crosshatch:11/RQ2A.210305.006/7119741:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-asus
