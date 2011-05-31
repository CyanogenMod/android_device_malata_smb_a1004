# inherit from the common version
-include device/malata/smb-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/malata/smb_a1004/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := harmony,smb_a1004

BOARD_KERNEL_CMDLINE := mem=384M@0M nvmem=128M@384M mem=512M@512M vmalloc=256M video=tegrafb console=tty0 usbcore.old_scheme_first=1 cpuid=200102 devicetype=1002 tegraboot=nand mtdparts=tegra_nand:16384K@7424K(misc),16384K@62208K(recovery),16384K@79104K(boot),204800K@96000K(system),222464K@301312K(cache),4096K@24320K(bootbmp),32768K@28928K(logodata) androidboot.hardware=a1004

TARGET_PREBUILT_KERNEL := device/malata/smb_a1004/kernel

BOARD_CUSTOM_RECOVERY_KEYMAPPING :=
BOARD_HAS_NO_SELECT_BUTTON := true

# Wifi related defines
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/firmware/fw_bcm4329.bin nvram_path=/system/etc/firmware/nvram.txt"

# EGL config 
TARGET_LIBAGL_USE_GRALLOC_COPYBITS :=

BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libgps
BOARD_GPS_BAD_AGPS := true

#BOARD_USES_HW_MEDIASCANNER := true
#BOARD_USES_HW_MEDIAPLUGINS := true

BOARD_USES_FROYO_AUDIOPOLICY := true
