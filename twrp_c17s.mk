# LOKMAT APPLLP 5 MAX (C17S) - twrp_c17s.mk
# Product makefile for TWRP 11 build

LOCAL_PATH := device/wiite/c17s

# Inherit from AOSP base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)


# Inherit from TWRP common config
$(call inherit-product, vendor/twrp/config/common.mk)

# Force init binary into recovery ramdisk (fixes broken /init -> /system/bin/init symlink)
PRODUCT_PACKAGES += \
    init_second_stage.recovery

# Product identification - MUST come after all inherit-product calls
PRODUCT_DEVICE := c17s
PRODUCT_NAME := twrp_c17s
PRODUCT_BRAND := LOKMAT
PRODUCT_MODEL := APPLLP 5 MAX
PRODUCT_MANUFACTURER := wiite
PRODUCT_RELEASE_NAME := LOKMAT APPLLP 5 MAX

# Force copy rules for crypto binaries and HALs (recovery ramdisk paths)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img \
    $(LOCAL_PATH)/recovery/root/init.recovery.mt6765.rc:recovery/root/init.recovery.mt6765.rc \
    $(LOCAL_PATH)/prebuilt/libs/android.hardware.keymaster@4.0-service:recovery/root/vendor/bin/hw/android.hardware.keymaster@4.0-service \
    $(LOCAL_PATH)/prebuilt/libs/android.hardware.gatekeeper@1.0-service:recovery/root/vendor/bin/hw/android.hardware.gatekeeper@1.0-service \
    $(LOCAL_PATH)/prebuilt/libs/android.hardware.gatekeeper@1.0-impl.so:recovery/root/vendor/lib64/android.hardware.gatekeeper@1.0-impl.so \
    $(LOCAL_PATH)/prebuilt/libs/android.hardware.gatekeeper@1.0.so:recovery/root/vendor/lib64/android.hardware.gatekeeper@1.0.so \
    $(LOCAL_PATH)/prebuilt/libs/android.hardware.keymaster@3.0.so:recovery/root/vendor/lib64/android.hardware.keymaster@3.0.so \
    $(LOCAL_PATH)/prebuilt/libs/android.hardware.keymaster@4.0.so:recovery/root/vendor/lib64/android.hardware.keymaster@4.0.so \
    $(LOCAL_PATH)/prebuilt/libs/gatekeeper.default.so:recovery/root/vendor/lib64/hw/gatekeeper.default.so \
    $(LOCAL_PATH)/prebuilt/libs/libcrypto.so:recovery/root/vendor/lib64/libcrypto.so \
    $(LOCAL_PATH)/prebuilt/libs/libgatekeeper.so:recovery/root/vendor/lib64/libgatekeeper.so \
    $(LOCAL_PATH)/prebuilt/libs/libkeymaster4.so:recovery/root/vendor/lib64/libkeymaster4.so \
    $(LOCAL_PATH)/prebuilt/libs/libkeymaster4support.so:recovery/root/vendor/lib64/libkeymaster4support.so \
    $(LOCAL_PATH)/prebuilt/libs/libkeymaster_messages.so:recovery/root/vendor/lib64/libkeymaster_messages.so \
    $(LOCAL_PATH)/prebuilt/libs/libkeymaster_portable.so:recovery/root/vendor/lib64/libkeymaster_portable.so \
    $(LOCAL_PATH)/prebuilt/libs/libpuresoftkeymasterdevice.so:recovery/root/vendor/lib64/libpuresoftkeymasterdevice.so \
    $(LOCAL_PATH)/prebuilt/libs/libsoftkeymasterdevice.so:recovery/root/vendor/lib64/libsoftkeymasterdevice.so \
    $(LOCAL_PATH)/prebuilt/libs/hwservicemanager:recovery/root/system/bin/hwservicemanager

# Build fingerprint override
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="SPRD/full_WP_C17S_PIX_TFT_D4/WP_C17S_PIX_TFT_D4:10/QP1A.190711.020/1749799430:user/test-keys"
