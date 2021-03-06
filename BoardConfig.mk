USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/vivaltods5m/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := hawaii
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := hawaii
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_UNIFIED_DEVICE := true
BOARD_VENDOR := samsung

# Assert
# TARGET_OTA_ASSERT_DEVICE := vivaltods5m,G313HU,GT-G313HU,hawaii
TARGET_OTA_ASSERT_DEVICE := vivaltonfc3g,G313HN,SM-G313HN,vivaltods5m,G313HU,SM-G313HU,hawaii

# Init
TARGET_INIT_VENDOR_LIB := libinit_hawaii_ss

# Kernel
BOARD_KERNEL_BASE := 0x81e00000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_vivaltods5m_rev00_cm_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/hawaii
KERNEL_TOOLCHAIN_PREFIX := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi-
BOARD_MKBOOTIMG_ARGS := --second $(OUT)/obj/KERNEL_OBJ/arch/arm/boot/dts/hawaii_ss_vivaltods5m_rev00.dtb

# PARTITION SIZE
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1161543680
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2424307712
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144 #BOARD_KERNEL_PAGESIZE * 64

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/vivaltods5m/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/vivaltods5m/bluetooth/libbt_vndcfg_g313hu.txt

# Connectivity - Wi-Fi
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_NO_WIFI_HAL                := true

# Resolution
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Hardware rendering
BOARD_EGL_CFG := device/samsung/vivaltods5m/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS -DHAWAII_HWC -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Camera
#BOARD_USE_METADATABUFFERTYPE := true
#BOARD_USE_STOREMETADATA := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# opengl
BOARD_USE_BGRA_8888 := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
  ifeq ($(WITH_DEXPREOPT),)
    #WITH_DEXPREOPT := true
  endif
endif

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Charger
BOARD_BATTERY_DEVICE_NAME := battery
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-vivaltods5m.hawaii

# Use the CM PowerHAL
TARGET_USES_CM_POWERHAL := true
CM_POWERHAL_EXTENSION := hawaii
TARGET_POWERHAL_VARIANT := cm

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/vivaltods5m/ril/

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/vivaltods5m/ramdisk/init.recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/vivaltods5m/ramdisk/fstab.hawaii_ss_vivaltods5m
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := false
BOARD_RECOVERY_ALWAYS_WIPES := false
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_DENSITY := hdpi

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/vivaltods5m/cmhw/
BOARD_USE_SAMSUNG_COLORFORMAT := false

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/vivaltods5m/include

# Compat
TARGET_USES_LOGD := false

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

BOARD_SEPOLICY_DIRS += \
    device/samsung/vivaltods5m/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    bkmgrd.te \
    device.te \
    surfaceflinger.te \
    bluetooth.te \
    gpsd.te \
    init.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_server.te 

# plap
