# Copyright (C) 2009 The Android Open Source Project
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
# inherit from common msm8660
-include device/htc/msm8660-common/BoardConfigCommon.mk


# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := rider

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048 
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=rider no_console_suspend=1 androidboot.selinux=permissive

TARGET_KERNEL_SOURCE := kernel/htc/rider/
TARGET_KERNEL_CONFIG := rider_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-arm-cortex-a8
TARGET_KERNEL_CUSTOM_TOOLCHAIN_SUFFIX := arm-cortex_a8-linux-gnueabi
BUILD_KERNEL := true

# Bluetooth/Wifi
-include device/htc/msm8660-common/bcmdhd.mk

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := rider

# RIL
#BOARD_PROVIDES_LIBRIL := false
BOARD_USES_LEGACY_RIL := true
#BOARD_USE_NEW_LIBRIL_HTC := true


# File system
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838859776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1252770816
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_FLASH_BLOCK_SIZE := 131072


# Recovery
TARGET_RECOVERY_FSTAB = device/htc/rider/ramdisk/fstab.rider
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
RECOVERY_FSTAB_VERSION := 2

# Wimax
BOARD_HAVE_SQN_WIMAX := true
COMMON_GLOBAL_CFLAGS += -DBOARD_HAVE_SQN_WIMAX

#CAMERA	-- move to msm8660 common.
#BOARD_HAVE_HTC_FFC := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_ICS_COMPAT -DQCOM_HARDWARE
#QCOM_ICS_COMPAT := true
#QCOM_HARDWARE := true
