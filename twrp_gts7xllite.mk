#
# Copyright 2019 The Android Open Source Project
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

PRODUCT_RELEASE_NAME := gts7xllite
PRODUCT_PLATFORM := lagoon

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := gts7xllite
PRODUCT_NAME := twrp_gts7xllite
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T735
PRODUCT_MANUFACTURER := samsung

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    bootctrl.$(PRODUCT_PLATFORM).recovery \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd
