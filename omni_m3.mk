$(call inherit-product, vendor/omni/config/gsm.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    security.perf_harden=0 \
    ro.allow.mock.location=1

PRODUCT_MANUFACTURER := Meizu

PRODUCT_DEVICE := m3
PRODUCT_NAME := omni_m3
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M3
PRODUCT_BOARD := m3

PRODUCT_PACKAGES += \
    init.recovery.mt6755.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/sbin/fuelgauged_static:recovery/root/sbin/fuelgauged_static