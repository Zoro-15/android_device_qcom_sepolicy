# Board specific SELinux policy variable definitions
LOCAL_PATH := $(call my-dir)
SEPOLICY_PATH := $(LOCAL_PATH)
BOARD_SYSTEM_EXT_SEPOLICY_PREBUILT_DIRS := $(SEPOLICY_PATH)/generic
BOARD_PRODUCT_SEPOLICY_PREBUILT_DIRS := $(SEPOLICY_PATH)/generic/product
BOARD_PLAT_PUB_VERSIONED_POLICY := $(SEPOLICY_PATH)
#$(shell $(SEPOLICY_PATH)/append.sh)

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS := \
    $(SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS) \
    $(SEPOLICY_PATH)/generic/public

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS := \
    $(SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS) \
    $(SEPOLICY_PATH)/generic/private

#once all the services are moved to Product /ODM above lines will be removed.
# sepolicy rules for product images
PRODUCT_PUBLIC_SEPOLICY_DIRS := \
    $(PRODUCT_PUBLIC_SEPOLICY_DIRS) \
    $(SEPOLICY_PATH)/generic/product/public

PRODUCT_PRIVATE_SEPOLICY_DIRS := \
    $(PRODUCT_PRIVATE_SEPOLICY_DIRS) \
    $(SEPOLICY_PATH)/generic/product/private


#SEPOLICY_FREEZE_TEST_EXTRA_DIRS := $(SEPOLICY_PATH)/generic/public \
	                         $(SEPOLICY_PATH)/generic/private \
                                 $(SEPOLICY_PATH)/generic/product/public \
				 $(SEPOLICY_PATH)/generic/product/private

#SEPOLICY_FREEZE_TEST_EXTRA_PREBUILT_DIRS := $(SEPOLICY_PATH)/generic/prebuilts/api/202404/public \
	                                    $(SEPOLICY_PATH)/generic/prebuilts/api/202404/private \
					    $(SEPOLICY_PATH)/generic/product/prebuilts/api/202404/public \
					    $(SEPOLICY_PATH)/generic/product/prebuilts/api/202404/private

