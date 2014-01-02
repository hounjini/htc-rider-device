#
# Copyright (C) 2011 The CyanogenMod Project
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

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/rider/overlay


# Bluetooth firmware
$(call inherit-product, device/htc/msm8660-common/bcm_hcd.mk)

$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# camera apk from Pyramid CM11. I dont want to edit Camera2 source file. it is really hasitating.
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/app/Camera2.apk.pyramid:system/app/Camera2.apk \

# wimax
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/lib/libhardware_legacy.s_.rider:system/lib/libhardware_legacy.s_ \
    device/htc/rider/proprietary/lib/libcrypto.s_.rider:system/lib/libcrypto.s_ \
    device/htc/rider/proprietary/lib/libdmtree.so:system/lib/libdmtree.so \
    device/htc/rider/proprietary/lib/libnetutils.s_.rider:system/lib/libnetutils.s_ \
    device/htc/rider/proprietary/bin/wimaxAddRoute:system/bin/wimaxAddRoute \
    device/htc/rider/proprietary/bin/wimaxConfigInterface:system/bin/wimaxConfigInterface \
    device/htc/rider/proprietary/bin/wimaxDaemon:system/bin/wimaxDaemon \
    device/htc/rider/proprietary/bin/wimaxDhcpRelease:system/bin/wimaxDhcpRelease \
    device/htc/rider/proprietary/bin/wimaxDhcpRenew:system/bin/wimaxDhcpRenew \
    device/htc/rider/proprietary/bin/wimaxDumpKmsg.dummy:system/bin/wimaxDumpKmsg \
    device/htc/rider/proprietary/bin/wimaxDumpLastKmsg.dummy:system/bin/wimaxDumpLastKmsg \
    device/htc/rider/proprietary/bin/wimaxDumpLogcat.dummy:system/bin/wimaxDumpLogcat \
    device/htc/rider/proprietary/bin/wimaxFactoryReset:system/bin/wimaxFactoryReset \
    device/htc/rider/proprietary/bin/wimax_mtd:system/bin/wimax_mtd \
    device/htc/rider/proprietary/bin/wimax_uart:system/bin/wimax_uart \
    device/htc/rider/proprietary/bin/getWiMAXPropDaemond:system/bin/getWiMAXPropDaemond \
    device/htc/rider/proprietary/bin/setWiMAXPropDaemond:system/bin/setWiMAXPropDaemond \
    device/htc/rider/proprietary/bin/sequansd:system/bin/sequansd \
    device/htc/rider/proprietary/framework/kitkat.wimax.jar:system/framework/wimax.jar \
    device/htc/rider/proprietary/etc/init.d/90disable_wimax_log:system/etc/init.d/90disable_wimax_log \
    device/htc/rider/proprietary/etc/permissions/android.hardware.wimax.xml:system/etc/permissions/android.hardware.wimax.xml \
#    device/htc/rider/proprietary/framework/wimax.jar:system/framework/wimax.jar \
#    device/htc/rider/proprietary/framework/framework2.jar:system/framework/framework2.jar \
#    device/htc/rider/proprietary/app/CMWimaxSettings.apk:system/app/CMWimaxSettings.apk \
#    device/htc/rider/proprietary/lib/libwimaxjni.s_:system/lib/libwimaxjni.so \
#    device/htc/rider/proprietary/bin/sequansd_shooter:system/bin/sequansd \
#    device/htc/rider/proprietary/lib/libhardware_legacy.__:system/lib/libhardware_legacy.__ \
#    device/htc/rider/proprietary/lib/libcryp98.so:system/lib/libcryp98.so \

# Required packages for WiMAX
PRODUCT_PACKAGES += CMWimaxSettings\
                    libwimaxjni \
                    libnetutils

#RIL
#PRODUCT_PACKAGES += \
#	libril

#LIGHT
PRODUCT_PACKAGES += lights.rider \

PRODUCT_PACKAGES += \
	camera.msm8660 \
	libsurfaceflinger_client \

# GPS
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/etc/gps.conf:system/etc/gps.conf

## ramdisk stuffs
PRODUCT_COPY_FILES += \
    device/htc/rider/ramdisk/init.rider.rc:root/init.rider.rc \
    device/htc/rider/ramdisk/init.environ.rc:root/init.environ.rc \
    device/htc/rider/ramdisk/ueventd.rider.rc:root/ueventd.rider.rc \
    device/htc/rider/ramdisk/init.rider.usb.rc:root/init.rider.usb.rc \
    device/htc/rider/ramdisk/fstab.rider:root/fstab.rider \
#    device/htc/rider/ramdisk/adbd:root/sbin/adbd \			#this is adbd from ics for dev.


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# cm dsp manager
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp


# for boot
PRODUCT_PACKAGES += \
	libnetcmdiface \


## dsp Audio
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/etc/audio_effects.conf:system/etc/audio_effects.conf \
    device/htc/rider/proprietary/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/rider/proprietary/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/rider/proprietary/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/rider/proprietary/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/rider/proprietary/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/rider/proprietary/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/rider/proprietary/etc/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/rider/proprietary/etc/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
    device/htc/rider/proprietary/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/rider/proprietary/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/rider/proprietary/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/rider/proprietary/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg
    
    

## Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/usr/keychars/BT_HID.kcm.bin:system/usr/keychars/BT_HID.kcm.bin \
    device/htc/rider/proprietary/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/rider/proprietary/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/rider/proprietary/usr/keychars/rider-keypad.kcm.bin:system/usr/keychars/rider-keypad.kcm.bin \
    device/htc/rider/proprietary/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl\
    device/htc/rider/proprietary/usr/keylayout/rider-keypad.kl:system/usr/keylayout/rider-keypad.kl \
    device/htc/rider/proprietary/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/rider/proprietary/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/htc/rider/proprietary/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/rider/proprietary/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl\
    device/htc/rider/proprietary/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc
    
    #have to modifi generic.kl

## Firmware
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/etc/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb \
    device/htc/rider/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/htc/rider/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/rider/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
#    device/htc/rider/proprietary/etc/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
#    device/htc/rider/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
#    device/htc/rider/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
#    device/htc/rider/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
#    device/htc/rider/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
#    device/htc/rider/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
# 	USE FIRMWARE AND KERNEL VIDC from RIDER htc kernel. firmware has codec license, vidc with htc kernel works with my board-rider.h memory mapping.

## misc
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/rider/proprietary/etc/apns-conf.xml:system/etc/apns-conf.xml \

## Hacked binary for shooter build
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/lib/libcryp98.so:system/lib/libcryp98.so

# Media profile
PRODUCT_COPY_FILES += \
     device/htc/rider/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
     device/htc/rider/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml \



## we have enough storage space to hold precise GC data
#PRODUCT_TAGS += dalvik.gc.type-precise


# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Set properties
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y



# proprietary vendor setup
$(call inherit-product-if-exists, vendor/htc/rider/rider-vendor.mk)

## media profiles and capabilities spec
$(call inherit-product, device/htc/rider/media_a1026.mk)
# htc audio settings
$(call inherit-product, device/htc/rider/media_htcaudio.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Device ID
PRODUCT_NAME := full_rider
PRODUCT_DEVICE := rider
