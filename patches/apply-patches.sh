#!/bin/bash
##run from lineage root
CWD=$PWD
cd $CWD/system/core
patch -p1 < ../../device/alps/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/alps/patches/0020-healthd_batteryVoltage.patch
cd $CWD/bionic
patch -p1 < ../device/alps/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd $CWD/frameworks/av
patch -p1 < ../../device/alps/patches/0006-fix-access-wvm-to-ReadOptions.patch
patch -p1 < ../../device/alps/patches/0007-Disable-usage-of-get_capture_position.patch
patch -p1 < ../../device/alps/patches/0008-Partial-Revert-Camera1-API-Support-SW-encoders.patch
patch -p1 < ../../device/alps/patches/0009-add-mtk-color-format-support.patch
cd $CWD/system/netd
patch -p1 < ../../device/alps/patches/netd.patch
cd $CWD/
