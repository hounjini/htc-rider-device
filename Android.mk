ifneq ($(filter rider,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
