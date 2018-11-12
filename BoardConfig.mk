# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt8127

# Platform
TARGET_BOARD_PLATFORM := mt8127

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Kernel
TARGET_PREBUILT_KERNEL := device/alcatel/ttab/kernel
#TARGET_KERNEL_CONFIG := ttab_defconfig
#TARGET_KERNEL_SOURCE := kernel/alcatel/ttab
#BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := device/alcatel/ttab/mkbootimg.mk
BOARD_MKBOOTIMG_ARGS := --cmdline "$(BOARD_KERNEL_CMDLINE)" --base 0x80000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --second_offset 0x00f00000 --tags_offset 0x00000100 --board vC29-0

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

TARGET_RECOVERY_FSTAB := device/alcatel/ttab/recovery/etc/twrp.fstab
BOARD_HAS_MTK_HARDWARE := true
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
TW_THEME := portrait_mdpi
TW_NO_EXFAT_FUSE := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file"
#TW_EXCLUDE_SUPERSU := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_INCLUDE_CRYPTO := true
TW_NO_SCREEN_BLANK := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
