LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)



include $(BUILD_PREBUILT)


# include the non-open-source counterpart to this file
-include vendor/samsung/grandprimeve3g/AndroidBoardVendor.mk

