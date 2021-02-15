# Full base
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Needed stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/alps/lineage_alps.mk)

LOCAL_PATH := device/alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="alps"

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq    
       
PRODUCT_NAME := lineage_alps
PRODUCT_DEVICE :=alps
PRODUCT_BRAND := lenovo
PRODUCT_MANUFACTURER := mediatek
PRODUCT_MODEL := Lenovo A536

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# set locales & aapt config.
PRODUCT_LOCALES := pl_PL en_US uk_UA
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Inherit some common CM stuff.
CM_BUILD :=a536
#CM_BUILDTYPE :=NIGHTLY

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp
	
PRODUCT_PROPERTY_OVERRIDES += \
  persist.service.adb.enable=1 \
  persist.service.debuggable=1 \
  persist.sys.usb.config=mtp,adb

$(call inherit-product, vendor/cm/config/common_full_phone.mk)
