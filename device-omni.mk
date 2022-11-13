DEVICE_PACKAGE_OVERLAYS += device/google/gs101/overlay-omni

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# EUICC
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay

# custom A/B postinstall
PRODUCT_PACKAGES += \
    omnipreopt_script

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/omnipreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true
