$(call inherit-product, device/malata/smb-common/smb-common.mk)

$(call inherit-product-if-exists, vendor/malata/smb_a1004/smb_a1004-vendor.mk)


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/malata/smb_a1004/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.a1004.rc:root/init.a1004.rc \
    $(LOCAL_PATH)/ueventd.nvidia.rc:root/ueventd.nvidia.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bcm4329.ko:system/lib/modules/bcm4329.ko \
    $(LOCAL_PATH)/excluded-input-devices.xml:/system/etc/excluded-input-devices.xml

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml

# Include packages
PRODUCT_PACKAGES += \
    gps.a1004

PRODUCT_NAME := full_smb_a1004
PRODUCT_DEVICE := smb_a1004
