#
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

# Get minimum languages available
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/coreprimeve3g/coreprimeve3g-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/coreprimeve3g/overlay

# Use high-density artwork where available; SM-G361H supports hdpi (high) ~240dpi.
# However the platform doesn't currently contain all of the bitmaps at hdpi density.
# So we do this little trick to fall back to the mdpi version if the hdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal ldpi mdpi hdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Set local path
LOCAL_PATH := device/samsung/coreprimeve3g

# Softlink sh
$(shell mkdir -p $(LOCAL_PATH)/../../../out/target/product/coreprimeve3g/recovery/root/system/bin)
$(shell ln -sf -t $(LOCAL_PATH)/../../../out/target/product/coreprimeve3g/recovery/root/system/bin ../../sbin/sh)

# Files to be copied
# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sc8830:root/fstab.sc8830 \
    $(LOCAL_PATH)/rootdir/init.bt.rc:root/init.bt.rc \
    $(LOCAL_PATH)/rootdir/init.sc8830.rc:root/init.sc8830.rc \
    $(LOCAL_PATH)/rootdir/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
    $(LOCAL_PATH)/rootdir/lpm.rc:root/lpm.rc \
    $(LOCAL_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
    $(LOCAL_PATH)/rootdir/init.rc:root/init.rc \

# TWRP
# PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

# Vold
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab

# Idc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/Zinitix_tsp.idc:system/usr/idc/Zinitix_tsp.idc

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/default_gain.conf:system/etc/default_gain.conf \
    $(LOCAL_PATH)/audio/devicevolume.xml:system/etc/devicevolume.xml \
    $(LOCAL_PATH)/audio/formatvolume.xml:system/etc/formatvolume.xml

# Hw Params
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hw_params/audio_para:system/etc/audio_para \
    $(LOCAL_PATH)/hw_params/codec_pga.xml:system/etc/codec_pga.xml\
    $(LOCAL_PATH)/hw_params/tiny_hw.xml:system/etc/tiny_hw.xml

# These are the hardware-specific files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Packages
# Filesystem
PRODUCT_PACKAGES += \
    setup_fs

# Camera
PRODUCT_PACKAGES += \
    Gallery2

# Wifi
PRODUCT_PACKAGES += \
    wpa_supplicant \
    dhcpcd.conf \
    libnetcmdiface

#Lights HAL
PRODUCT_PACKAGES += \
    lights.sc8830

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default

# Usb accessory
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Service mode
PRODUCT_PACKAGES += \
    SamsungServiceMode

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Properties
# Default properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Graphic properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.product.hardware=coreprimeve3g

# SPRD-SCI default build.prop properties overrides
PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.product.chipset=sc8830 \
    ro.com.android.dataroaming=false \
    persist.msms.phone_count=2 \
    persist.sys.sprd.modemreset=1

# Google-specific location properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1

# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs before they have a chance to cause problems.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enterprise_mode=1 \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false \
    dalvik.gc.type=precise \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heapsize=128m \
    ro.telephony.ril_class=SamsungSPRDRIL \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=150 \
    mobiledata.interfaces=rmnet0 \
    ro.zygote.disable_gl_preload=true \
    persist.radio.multisim.config=none \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.call_ring=0 \
    ro.crypto.state=unsupported \
    ro.com.google.gmsversion=4.1_r6 \
    boot.fps=7

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise
