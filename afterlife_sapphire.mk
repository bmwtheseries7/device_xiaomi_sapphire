#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sapphire device
$(call inherit-product, device/xiaomi/sapphire/device.mk)

# Inherit some common AfterlifeOS stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# Device configs
AFTERLIFE_MAINTAINER := BMWxKIBRIA
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES = 1080
TARGET_UDFPS_ANIMATIONS := true

# Flag Gapps
AFTERLIFE_GAPPS := true
GAPPS_CORE := true
TARGET_INCUDE_CHROME := true
TARGET_INCLUDE_CONTACTS := true
TARGET_INCLUDE_DIALER := true
TARGET_INCLUDE_GBOARD := true
TARGET_INCLUDE_MAPS := true
TARGET_INCLUDE_MESSAGES := true

PRODUCT_NAME := afterlife_sapphire
PRODUCT_DEVICE := sapphire
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 13

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
