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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from liber device
$(call inherit-product, device/motorola/liber/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := statix_liber
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

#Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
