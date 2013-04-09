$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/prestigio/rk30xx-common/overlay

# Rockchip init blob
PRODUCT_COPY_FILES += \
    device/prestigio/rk30xx-common/ramdisk/init:root/init \

# boot.img blobs
PRODUCT_COPY_FILES += \
    device/prestigio/rk30xx-common/ramdisk/misc.img:root/misc.img \
    device/prestigio/rk30xx-common/ramdisk/prebuilt/e2fsck:root/sbin/e2fsck \
    device/prestigio/rk30xx-common/ramdisk/prebuilt/mkdosfs:root/sbin/mkdosfs \
    device/prestigio/rk30xx-common/ramdisk/prebuilt/mke2fs:root/sbin/mke2fs \
    device/prestigio/rk30xx-common/ramdisk/prebuilt/readahead:root/sbin/readahead \
    device/prestigio/rk30xx-common/ramdisk/prebuilt/resize2fs:root/sbin/resize2fs \
    device/prestigio/rk30xx-common/ramdisk/rk30xxnand_ko.ko.3.0.8+:root/rk30xxnand_ko.ko.3.0.8+ \
    device/prestigio/rk30xx-common/ramdisk/rk30xxnand_ko.ko.3.0.36+:root/rk30xxnand_ko.ko.3.0.36+ \

# Offline charging
PRODUCT_COPY_FILES += \
    device/prestigio/rk30xx-common/ramdisk/charger:root/charger \
    device/prestigio/rk30xx-common/ramdisk/img/battery_0.png:root/res/images/charger/battery_0.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_1.png:root/res/images/charger/battery_1.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_2.png:root/res/images/charger/battery_2.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_3.png:root/res/images/charger/battery_3.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_4.png:root/res/images/charger/battery_4.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_5.png:root/res/images/charger/battery_5.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_charge.png:root/res/images/charger/battery_charge.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_fail.png:root/res/images/charger/battery_fail.png \
    device/prestigio/rk30xx-common/ramdisk/img/battery_full.png:root/res/images/charger/battery_full.png \

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml
#    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
#    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
#    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \

# EGL config
PRODUCT_COPY_FILES += \
    device/prestigio/rk30xx-common/config/egl.cfg:system/lib/egl/egl.cfg

# Media profiles
PRODUCT_COPY_FILES += \
    device/prestigio/rk30xx-common/config/media_profiles.xml:system/etc/media_profiles.xml \
    device/prestigio/rk30xx-common/config/media_codecs.xml:system/etc/media_codecs.xml

# Vold
PRODUCT_COPY_FILES += \
    device/prestigio/rk30xx-common/config/vold.fstab:system/etc/vold.fstab

# Rockchip Keyboard
PRODUCT_COPY_FILES += \
    device/prestigio/rk30xx-common/config/rk29-keypad.kl:/system/usr/keylayout/rk29-keypad.kl

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=30

PRODUCT_PROPERTY_OVERRIDES += \
    sys.mem.max_hidden_apps=10

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
