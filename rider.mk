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
    device/htc/rider/proprietary/framework/wimax.jar:system/framework/wimax.jar \
    device/htc/rider/proprietary/etc/init.d/90disable_wimax_log:system/etc/init.d/90disable_wimax_log \
    device/htc/rider/proprietary/etc/permissions/android.hardware.wimax.xml:system/etc/permissions/android.hardware.wimax.xml \
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

# Camera
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/lib/libcamera_client.so.pyramid:system/lib/libcamera_client.so \
    device/htc/rider/proprietary/lib/hw/camera.default.so.pyramid:system/lib/hw/camera.default.so \

PRODUCT_PACKAGES += \
	camera.msm8660 \
	libsurfaceflinger_client \

# GPS
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/etc/gps.conf:system/etc/gps.conf

## ramdisk stuffs
PRODUCT_COPY_FILES += \
    device/htc/rider/ramdisk/init.rider.bcm4329.rc:root/init.rider.rc \
    device/htc/rider/ramdisk/ueventd.rider.rc:root/ueventd.rider.rc \
    device/htc/rider/ramdisk/init.rider.usb.rc:root/init.rider.usb.rc \
    device/htc/rider/ramdisk/fstab.rider:root/fstab.rider \
    device/htc/rider/ramdisk/init.rc:root/init.rc \
    device/htc/rider/ramdisk/init.cm.rc:root/init.cm.rc \
#    device/htc/rider/ramdisk/init:root/init \

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

## Firmware
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/etc/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/rider/proprietary/etc/firmware/default_bak.acdb:system/etc/firmware/default_bak.acdb \
    device/htc/rider/proprietary/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/htc/rider/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/rider/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/rider/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/rider/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/rider/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/htc/rider/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/htc/rider/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \

# ADRENO 220
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/lib/libC2D2.so:system/lib/libC2D2.so \
    device/htc/rider/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/htc/rider/proprietary/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/htc/rider/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/htc/rider/proprietary/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
    device/htc/rider/proprietary/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/htc/rider/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/htc/rider/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/htc/rider/proprietary/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/htc/rider/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/htc/rider/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \

# QC thermald config
# PRODUCT_COPY_FILES += device/htc/rider/proprietary/etc/thermald.conf:system/etc/thermald.conf
# obsolated because kernel (gunine's) has own thermal caring system.

## misc
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/rider/proprietary/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/rider/proprietary/etc/init.d/91debuggable:system/etc/init.d/91debuggable \
#    device/htc/rider/proprietary/etc/init.d/91debuggable:system/etc/init.d/90PM_FAST \
#    device/htc/rider/proprietary/etc/init.d/91debuggable:system/etc/init.d/90tcp \

## kernal and modules
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#LOCAL_KERNEL := device/htc/rider/ramdisk/kernAl
#else
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

#PRODUCT_COPY_FILES += \
#    device/htc/rider/proprietary/lib/modules/sequans_sdio.ko:system/lib/modules/sequans_sdio.ko \
#    device/htc/rider/proprietary/lib/modules/bcmdhd.ko:system/lib/modules/bcmdhd.ko \
#    device/htc/rider/proprietary/lib/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
##    device/htc/rider/proprietary/lib/modules/cpaccess.ko:system/lib/modules/cpaccess.ko \
##    device/htc/rider/proprietary/lib/modules/msm-buspm-dev.ko:system/lib/modules/msm-buspm-dev.ko \
##    device/htc/rider/proprietary/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \
##    device/htc/rider/proprietary/lib/modules/bluetooth-power.ko:system/lib/modules/bluetooth-power.ko \
##    device/htc/rider/proprietary/lib/modules/spidev.ko:system/lib/modules/spidev.ko \
##    device/htc/rider/proprietary/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \


# WIFI
# BCM4329
# $(call inherit-product, hardware/broadcom/wlan/bcm4329/firmware/Android.mk)
PRODUCT_COPY_FILES += \
    hardware/broadcom/wlan/bcm4329/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
    hardware/broadcom/wlan/bcm4329/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin \

# BCMDHD
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)




## Hacked binary for shooter build
PRODUCT_COPY_FILES += \
    device/htc/rider/proprietary/lib/libcryp98.so:system/lib/libcryp98.so

# Media profile
PRODUCT_COPY_FILES += \
     device/htc/rider/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
     device/htc/rider/proprietary/etc/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
	device/htc/rider/proprietary/lib/libacdbloader.so:system/lib/libacdbloader.so

## overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/rider/overlay

## we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

## device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US ko_KR

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Set properties
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0

PRODUCT_PROPERTY_OVERRIDES += \
	ro.setupwizard.enable_bypass=1 \
	ro.com.google.locationfeatures=1 \
    ro.telephony.default_network=0



# proprietary vendor setup
$(call inherit-product-if-exists, vendor/htc/rider/rider-vendor.mk)
#$(call inherit-product, vendor/qcom/proprietary/qcom-vendor.mk)

## media profiles and capabilities spec
$(call inherit-product, device/htc/rider/media_a1026.mk)
# htc audio settings
$(call inherit-product, device/htc/rider/media_htcaudio.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, build/target/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/msm8660-common/msm8660.mk)

$(call inherit-product, build/target/product/languages_full.mk)
