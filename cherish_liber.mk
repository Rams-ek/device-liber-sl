#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from liber device
$(call inherit-product, device/motorola/liber/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cherish_liber
PRODUCT_DEVICE := liber
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Motorola One Fusion+
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=liber_retail \
    PRIVATE_BUILD_DESC="liber_retail-user 10 QPIS30.73-33-13 6de83 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
# Cherish Official
CHERISH_BUILD_TYPE := OFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Rams-Ek

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

#vanilla
CHERISH_VANILLA := true
