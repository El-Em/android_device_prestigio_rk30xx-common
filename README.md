Common repo for Rockchip-based Prestigio devices
================================================

This repo is designed for Prestigio tablets with the Rockchip RK3066 Dual Core processor, but since all Rockchip devices are similar other devices may be compatible. The currently tested devices are:

PMP5570C (MediaPad 7.0 Pro Duo)

Enable ADB
----------

Rockchip devices are not recognised by Google's ADB tools. Support can be enabled with the following:

Create the $HOME/.android/adb_usb.ini file:

    $ android update adb

Add the Rockchip Vendor_ID to the file so that it looks as follows:

    # ANDROID 3RD PARTY USB VENDOR ID LIST -- DO NOT EDIT.
    # USE 'android update adb' TO GENERATE.
    # 1 USB VENDOR ID PER LINE.
    0x2207

Flashing Partitions
-------------------

Rockchip devices cannot take advantage of Google's fastboot tool. Instead a proprietary Windows tool, RKAndroidTool, must be used to flash stock ROMs and to install ClockworkMod Recovery. However once installed update.zip files can be flashed as normal.

Building ClockworkMod Recovery
------------------------------

The current method of installing ClockworkMod recovery is to discard the final recovery.img, repack the ramdisk-recovery.img with a Rockchip tool, mkkrnlimg, and flash the ramdisk directly to the recovery partition with RKAndroidTool.

The command to repack the ramdisk-recovery.img is:

    $ mkkrnlimg -a ramdisk-recovery.img recovery.img
