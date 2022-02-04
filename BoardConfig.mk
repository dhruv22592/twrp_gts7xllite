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

DEVICE_PATH := device/samsung/gts7xllite

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := lagoon
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Platform
TARGET_BOARD_PLATFORM := lagoon
TARGET_BOARD_PLATFORM_GPU := qcom-adreno619
TARGET_USES_HARDWARE_QCOM_BOOTCTRL := true
QCOM_BOARD_PLATFORMS += lagoon
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 firmware_class.path=/vendor/firmware_mnt androidboot.usbcontroller=a600000.dwc3
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE          := 0x00000000
BOARD_KERNEL_TAGS_OFFSET   := 0x01e00000
BOARD_KERNEL_OFFSET        := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0x00000000
BOARD_RAMDISK_OFFSET       := 0x02000000
BOARD_DTB_OFFSET           := 0x01f00000
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) --kernel_offset $(BOARD_KERNEL_OFFSET) --second_offset $(BOARD_KERNEL_SECOND_OFFSET) --dtb_offset $(BOARD_DTB_OFFSET) --header_version $(BOARD_BOOT_HEADER_VERSION) --dtb $(TARGET_PREBUILT_DTB)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 71303168
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 86888448

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 6442450944
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 6438256640
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := product vendor system odm

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# TWRP specific build flags
TW_THEME := landscape_hdpi
TARGET_SCREEN_WIDTH := 1660
TARGET_SCREEN_HEIGHT := 2560
TW_ROTATION :=  90
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true

# Crypto
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false

# TWRP
TW_USE_TOOLBOX := true
TW_INCLUDE_NTFS_3G := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 425
TW_DEFAULT_BRIGHTNESS := 113
TW_HAS_DOWNLOAD_MODE := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_USES_MKE2FS := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_COPY_OUT_VENDOR := vendor
BOARD_HAS_LARGE_FILESYSTEM := true
