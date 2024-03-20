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