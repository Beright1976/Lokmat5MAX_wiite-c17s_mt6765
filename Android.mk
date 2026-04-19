# LOKMAT APPLLP 5 MAX (C17S) - Android.mk

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),c17s)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
