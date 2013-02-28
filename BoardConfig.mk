# Copyright (C) 2012 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common msm8660
include device/htc/msm8660-common/BoardConfigCommon.mk

# Include path
# TARGET_SPECIFIC_HEADER_PATH := device/htc/rider/include

#QCOM HARDWARE USED
QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := rider

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048 
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=rider no_console_suspend=1

TARGET_KERNEL_SOURCE := kernel/htc/rider/
TARGET_KERNEL_CONFIG := rider_cm10_defconfig

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := rider

# RIL
#BOARD_PROVIDES_LIBRIL := false
BOARD_USES_LEGACY_RIL := true
BOARD_USE_NEW_LIBRIL_HTC := true

# Wifi
# BCMDHD
#WIFI_DRIVER_MODULE_NAME          := bcmdhd
#WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcmdhd.ko"
# BCM4329
WIFI_DRIVER_MODULE_NAME          := bcm4329
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"


# File system
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/rider/recovery/graphics.c
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
BOARD_VOLD_MAX_PARTITIONS := 36

# SDCARD
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
#BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
#BOARD_USES_MMCUTILS := true
#BOARD_HAS_NO_MISC_PARTITION := true


# Wimax
BOARD_HAVE_SQN_WIMAX := true
COMMON_GLOBAL_CFLAGS += -DBOARD_HAVE_SQN_WIMAX

#CAMERA
BOARD_HAVE_HTC_FFC := true

#DISABLE AUDIO SERVICE
#BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_ALSA_AUDIO := false 

#Audio
BOARD_HAVE_HTC_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA
#TARGET_USES_QCOM_LPA := true
BOARD_USES_QCOM_LPA := true
BOARD_HAVE_BACK_MIC_CAMCORDER := true
#CODECS
WITH_QCOM_LPA := true


# FOR BUILD libralloc. I'm not using JB Kernel but ICS modified kernel.
COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT
QCOM_ICS_COMPAT := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_otg/msm_hsusb/gadget/lun0/file
