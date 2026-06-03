
#
# Copyright (C) 2019 santhoosh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# 
# изменения в код вносил oneexuser, помогал Makson/>
# проект ChronoRecoveryProject (CRP)
#
#   #############   #############   #############   
#   #           #   #           #   #           #
#   #  ##########   #           #   #   #####   #
#   #  #            #############   #           #        
#   #  #            # # #  #        #############
#   #  #            # #  #  #       #
#   #  ##########   # #   #  #      #
#   #           #   # #    #  #     #
#   #############   # #     #  #    # 


DEVICE_PATH := device/samsung/a50

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

ALLOW_MISSING_DEPENDENCIES=true

# Bootloader
BOARD_VENDOR := samsung
TARGET_SOC := exynos9610
TARGET_BOOTLOADER_BOARD_NAME := universal9610
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# отключение шифрования
BOARD_FORCE_ENCRYPT := false
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := false
TW_NO_LEGACY_PROPS := true

# отключение DM-VERITY и ANDROID VERIFIED BOOT
BOARD_KERNEL_CMDLINE += androidboot.disable_verity=1 androidboot.veritymode=disabled
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2 --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --padding_size 4096
BOARD_AVB_VBMETA_KEY_PATH := external/avb/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_KEY_PATH :=  external/avb/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096

# надо
TW_USE_NEW_MINADBD := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_NO_RECOVERY_PARTITION := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_KERNEL_IMAGE_NAME := zImage

BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --header_version 1

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-g72

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# TWRP specific build flags
RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 153
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_EXCLUDE_TWRPAPP := true
PLATFORM_VERSION := 11
PLATFORM_SECURITY_PATCH := 2099-12-31

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
