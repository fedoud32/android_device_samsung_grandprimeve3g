LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

LOCAL_MODULE := init.grandprimeve3g.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.grandprimeve3g.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ueventd.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/ueventd.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lpm.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/lpm.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.lpm.sh
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.lpm.sh
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := init.grandprimeve3g.rc
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SCRIPT
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := /files/init.grandprimeve3g.rc
include $(BUILD_PREBUILT)
include $(CLEAR_VARS)


# include the non-open-source counterpart to this file
-include vendor/samsung/chief/AndroidBoardVendor.mk

