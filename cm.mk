# Inherit some common CM stuff.
$(call inherit-product, device/htc/rider/rider.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

$(call inherit-product, vendor/cm/config/cm_audio.mk)

$(call inherit-product, vendor/cm/config/common.mk)

$(call inherit-product, vendor/cm/config/themes_common.mk)

include $(all-subdir-makefiles)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_rider \
	BUILD_ID="JZO54K" \
	BUILD_FINGERPRINT="kt_kr/htc_rider/rider:4.1.2/JZO54K/383696.8:user/release-keys" \
	PRIVATE_BUILD_DESC="3.09.1010.8 CL383696 release-keys" \
	PLATFORM_VERSION="4.1.2" \
#	BUILD_DISPLAY_ID="cm_rider-userdebug 4.0.4" \
	
	
TARGET_BOOTANIMATION_NAME := vertical-540x960
PRODUCT_NAME := cm_rider
PRODUCT_DEVICE := rider
PRODUCT_MODEL := HTC_X515E
PRODUCT_MANUFACTURER := HTC
PRODUCT_RELEASE_NAME := Rider
PRODUCT_BRAND := kt_kr

# Release name and versioning
-include vendor/cm/config/common_versions.mk
