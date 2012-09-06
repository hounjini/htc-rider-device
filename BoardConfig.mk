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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/htc/rider/include

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := rider

# Platform
ARCH := arm
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a8
ARCH_ARM_HAVE_NEON := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 -DQCOM_HARDWARE -DNO_QCOM_MVS
COMMON_GLOBAL_CFLAGS += -DBOARD_HAVE_SQN_WIMAX
COMMON_GLOBAL_CFLAGS += -DQCOM_ROTATOR_KERNEL_FORMATS

# Scorpion optimizations
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=rider no_console_suspend=1
BOARD_KERNEL_BASE := 0x48000000
BOARD_KERNEL_PAGE_SIZE := 2048 
TARGET_KERNEL_SOURCE := kernel/htc/msm8660
TARGET_KERNEL_CONFIG := rider_defconfig
TARGET_PREBUILT_KERNEL := device/htc/rider/ramdisk/kernAl

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
QCOM_HARDWARE := true

# Audio
COMMON_GLOBAL_CFLAGS += -DWITH_QCOM_LPA
TARGET_USES_QCOM_LPA := true
#TARGET_USES_ION := true


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
#TARGET_NEEDS_BLUETOOTH_INIT_DELAY := ture

# Camera
BOARD_HAVE_HTC_FFC := true
#HERE
BOARD_USE_REVERSE_FFC := true
TARGET_INVERSE_ROTATE := true
#THANKS FOR GUNINE camera fix _ camera binary _camera from gunine
#THere!

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# QOM GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := rider

# Graphics
USE_OPENGL_RENDERER := true
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
QCOM_ROTATOR_KERNEL_FORMATS := true

TARGET_QCOM_HDMI_OUT := true
TARGET_HAVE_HDMI_OUT := true
#this is redundant option but, anyway apply (from qcom config)
TARGET_QCOM_HDMI_RESOLUTION_AUTO := true
BOARD_EGL_CFG := device/htc/rider/proprietary/lib/egl/egl.cfg

# RIL
TARGET_PROVIDES_LIBRIL := vendor/htc/rider/proprietary/libril.so
BOARD_USE_NEW_LIBRIL_HTC := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcm4329/parameters/firmware_path"
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/proc/calibration iface_name=wlan"
WIFI_DRIVER_MODULE_NAME          := "bcm4329"
BOARD_WLAN_DEVICE_REV := bcm4329
WIFI_BAND := 802_11_ABGN
BOARD_NEEDS_CUTILS_LOG := true

# Wimax
BOARD_HAVE_SQN_WIMAX := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
DYNAMIC_SHARED_LIBV8SO := true


# cat /proc/emmc
#dev:        size     erasesize name7
# mmcblk0p17: 00040000 00000200 "misc"
# mmcblk0p22: 00fffc00 00000200 "recovery"
# mmcblk0p21: 01000000 00000200 "boot"
# mmcblk0p23: 31fffc00 00000200 "system"
# mmcblk0p32: 00140200 00000200 "local"
# mmcblk0p25: 06ebde00 00000200 "cache"
# mmcblk0p24: 4aabc400 00000200 "userdata"
# mmcblk0p28: 01400000 00000200 "devlog"
# mmcblk0p30: 00040000 00000200 "pdata"
# mmcblk0p18: 02800000 00000200 "radio"
# mmcblk0p19: 007ffa00 00000200 "radio_config"
# mmcblk0p26: 00400000 00000200 "modem_st1"
# mmcblk0p27: 00400000 00000200 "modem_st2"
# mmcblk0p8:  00c00200 00000200 "wimax"
# mmcblk0p33: 007ffa00 00000200 "udata_wimax"

# File system
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_CUSTOM_GRAPHICS := ../../../device/htc/rider/recovery/graphics.c
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common
BOARD_VOLD_MAX_PARTITIONS := 36

# Recovery init.rc
TARGET_RECOVERY_INITRC := device/htc/rider/recovery/init.rc

# SDCARD
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# MISC
BOARD_HAS_NO_SELECT_BUTTON := true

# TARGET_USES_ION := true
# 얘는 켜는순간 부팅 nono

#qcom
# TARGET_USES_SF_BYPASS := true
# TARGET_HAVE_BYPASS := true
BOARD_HAVE_QCOM_FM := true
WEBCORE_INPAGE_VIDEO := true
# TARGET_HAS_S3D_SUPPORT := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true


#CODECS
WITH_QCOM_LPA := true
