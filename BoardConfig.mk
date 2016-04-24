# Copyright (C) 2013 The CyanogenMod Project
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

# Assert
TARGET_OTA_ASSERT_DEVICE                    := grandprimeve3g

# Architecture
TARGET_ARCH                                 := arm
TARGET_BOARD_PLATFORM                       := sc8830
# Board Platform is not hawaii
TARGET_CPU_ABI                              := armeabi-v7a
TARGET_CPU_ABI2                             := armeabi
TARGET_ARCH_VARIANT                         := armv7-a-neon
TARGET_CPU_VARIANT                          := cortex-a7
TARGET_CPU_SMP                              := true
ARCH_ARM_HAVE_ARMV7A                        := true
ARCH_ARM_HAVE_TLS_REGISTER                  := true
ARCH_ARM_HAVE_NEON                          := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME                := 
# Bootloader Board name is not grandprimeve3g. Check build.prop
TARGET_NO_BOOTLOADER                        := true
TARGET_NO_RADIOIMAGE                        := true

# Platform
COMMON_GLOBAL_CFLAGS += -DSPRD_HARDWARE
TARGET_BOARD_PLATFORM_GPU                   := mali-400 MP

# Kernel
BOARD_KERNEL_CMDLINE                        := console=ttyS1,115200n8
BOARD_KERNEL_BASE                           := 0x00000000
BOARD_KERNEL_PAGESIZE                       := 2048
#TARGET_KERNEL_SOURCE                       := kernel/samsung/grandprimeve3g
#TARGET_KERNEL_CONFIG                       := cyanogenmod-grandprimeve3g_defconfig
TARGET_PREBUILT_KERNEL                      := device/samsung/grandprimeve3g/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE              := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE          := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE             := 209715200
BOARD_SYSTEMIMAGE_PARTITION_SIZE            := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE          := 5872025600
BOARD_FLASH_BLOCK_SIZE                      := 131072
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE           := ext4
TARGET_USERIMAGES_USE_EXT4                  := true
BOARD_HAS_LARGE_FILESYSTEM                  := true

# Recovery
BOARD_HDPI_RECOVERY                         := true
#TARGET_RECOVERY_INITRC                     := device/samsung/grandprimeve3g/recovery/recovery.rc
TARGET_RECOVERY_FSTAB                       := device/samsung/grandprimeve3g/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT                := BGRA_8888
BOARD_CUSTOM_RECOVERY_KEYMAPPING            := ../../device/samsung/grandprimeve3g/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT              := \"roboto_15x24.h\"
BOARD_HAS_NO_SELECT_BUTTON                  := true
BOARD_HAS_NO_MISC_PARTITION                 := true
BOARD_SUPPRESS_EMMC_WIPE                    := true
BOARD_UMS_LUNFILE                           := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH             := "/sys/devices/platform/dwc_otg.0/gadget/lun0/file"

# TWRP Specific
# RECOVERY_GRAPHICS_USE_LINELENGTH          := true
# TW_NO_SCREEN_TIMEOUT                      := true
# BOARD_HAS_NO_REAL_SDCARD                  := true
# RECOVERY_SDCARD_ON_DATA                   := true
# TW_INTERNAL_STORAGE_PATH                  := "/sdcard"
# TW_INTERNAL_STORAGE_MOUNT_POINT           := "sdcard"
# TW_EXTERNAL_STORAGE_PATH                  := "/storage/extSdCard"
# TW_EXTERNAL_STORAGE_MOUNT_POINT           := "/storage/extSdCard"
# TW_NO_USB_STORAGE                         := true
# TW_DEFAULT_EXTERNAL_STORAGE               := true
# TW_HAS_DOWNLOAD_MODE                      := true
# TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID    := true
# TW_BRIGHTNESS_PATH                        := "/sys/class/backlight/panel/brightness"
HAVE_SELINUX                                := true

# Hardware Rendering
USE_OPENGL_RENDERER                         := true
BOARD_EGL_CFG                               := device/samsung/coreprimeve3g/egl/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB                   := true
COMMON_GLOBAL_CFLAGS                        += -DSC6820I_HWC -DBOARD_EGL_NEEDS_LEGACY_FB

# Camera
USE_CAMERA_STUB                             := true
COMMON_GLOBAL_CFLAGS                        += -DMR0_CAMERA_BLOB

# Audio
BOARD_USES_GENERIC_AUDIO                    := true
COMMON_GLOBAL_CFLAGS                        += -DMR0_AUDIO_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH                        := true
BOARD_HAVE_BLUETOOTH_BCM                    := true
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY     := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/grandprimeve3g/bluetooth
BOARD_BLUEDROID_VENDOR_CONF                 := device/samsung/grandprimeve3g/bluetooth/libbt_vndcfg.txt

# Connectivity - Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER                 := NL80211
WPA_SUPPLICANT_VERSION                      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB            := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER                        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB                   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                           := bcmdhd
BOARD_WLAN_DEVICE_REV                       := bcm4330
WIFI_DRIVER_FW_PATH_PARAM                   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA                     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP                      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P                     := "/system/etc/wifi/bcmdhd_p2p.bin"
WIFI_DRIVER_MODULE_PATH                     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME                     := "dhd"
WIFI_DRIVER_MODULE_ARG                      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG                   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                                   := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI                     := true
BOARD_LEGACY_NL80211_STA_EVENTS             := true
BOARD_NO_APSME_ATTR                         := true

# Ril
#BOARD_PROVIDES_LIBRIL := true
BOARD_FORCE_RILD_AS_ROOT                    := true
BOARD_MOBILEDATA_INTERFACE_NAME             := "rmnet0"
BOARD_RIL_CLASS                             := ../../../device/samsung/grandprimeve3g/ril/

# Bootanimation
TARGET_SCREEN_WIDTH                         := 540
TARGET_SCREEN_HEIGHT                        := 960

#Bootanimation
TARGET_BOOTANIMATION_PRELOAD                := true
TARGET_BOOTANIMATION_TEXTURE_CACHE          := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND                := true
BOARD_CHARGING_MODE_BOOTING_LPM             := /sys/class/power_supply/battery/batt_lp_charging

# Dexpreopt
WITH_DEXPREOPT                              := true
