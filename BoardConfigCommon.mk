TARGET_SPECIFIC_HEADER_PATH := device/prestigio/rk30xx-common/include

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOOTLOADER_BOARD_NAME := rk30board
TARGET_BOARD_PLATFORM := rk30xx
TARGET_BOARD_PLATFORM_GPU := mali400

TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_ARMV7A := true

TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

COMMON_GLOBAL_CFLAGS += -DMISSING_GRALLOC_BUFFERS

# Kernel information
TARGET_KERNEL_SOURCE := kernel/prestigio/rk30xx
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384

# Graphics
USE_OPENGL_RENDERER := true
TARGET_DISABLE_TRIPLE_BUFFERING := true
#TARGET_USES_ION := true
BOARD_EGL_CFG := device/prestigio/rk30xx-common/config/egl.cfg
BOARD_USES_HDMI := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# OMX - for now use soft decoding :(
# BOARD_USES_PROPRIETARY_OMX := true

# Camera
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

#Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

#Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PRE_COMMAND := "busybox dd if=/misc.img of=/dev/block/mtdblock0; sync"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/prestigio/rk30xx-common/releasetools/rk_ota_from_target_files

