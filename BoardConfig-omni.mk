# defined in vendor/google_devices/oriole/proprietary/BoardConfigVendor.mk
# TODO - AB_OTA_PARTITIONS contains all the other images too like abl.img etc
# do we want to ship all of them in every ota?
#AB_OTA_PARTITIONS += \
	vendor \
	vendor_dlkm

#BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := ext4
#TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm

# Enable chained vbmeta for vendor
AB_OTA_PARTITIONS += \
	vbmeta_vendor

BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3
