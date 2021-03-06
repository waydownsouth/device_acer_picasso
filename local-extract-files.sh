#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=picasso
MANUFACTURER=acer

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

cp /system/etc/vold.fstab.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/vold.fstab
cp /system/lib/egl/libEGL_tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_tegra.so
cp /system/lib/egl/libGLESv1_CM_tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_tegra.so
cp /system/lib/egl/libGLESv2_tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_tegra.so
cp /system/lib/hw/gps.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gps.tegra.so
cp /system/lib/hw/gralloc.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.tegra.so
cp /system/lib/hw/hwcomposer.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hwcomposer.tegra.so
cp /system/lib/hw/lights.picasso.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lights.picasso.so
cp /system/lib/hw/overlay.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/overlay.tegra.so
cp /system/lib/hw/sensors.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors.tegra.so
cp /system/lib/hw/tegra_alsa.tegra.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/tegra_alsa.tegra.so
cp /system/lib/hw/dhd.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/dhd.ko
cp /system/lib/hw/scsi_wait_scan.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/scsi_wait_scan.ko
cp /system/lib/hw/ufsd.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ufsd.ko
cp /system/lib/libcgdrv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libcgdrv.so
cp /system/lib/libnvddk_2d.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvddk_2d.so
cp /system/lib/libnvddk_2d_v2.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvddk_2d_v2.so
cp /system/lib/libnvddk_aes_user.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libnvddk_aes_user.so





(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/htc/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:obj/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:obj/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# All the blobs necessary for passion
PRODUCT_COPY_FILES += \\
    vendor/htc/__DEVICE__/proprietary/A1026_CFG.csv:/system/etc/A1026_CFG.csv \\
    vendor/htc/__DEVICE__/proprietary/AdieHWCodec.csv:/system/etc/AdieHWCodec.csv \\
    vendor/htc/__DEVICE__/proprietary/AdieHWCodec_WA.csv:/system/etc/AdieHWCodec_WA.csv \\
    vendor/htc/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/htc/__DEVICE__/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \\
    vendor/htc/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/htc/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/htc/__DEVICE__/proprietary/htc_ebdlogd:/system/bin/htc_ebdlogd \\
    vendor/htc/__DEVICE__/proprietary/libaudio.so:/system/lib/libaudio.so \\
    vendor/htc/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/htc/__DEVICE__/proprietary/libcamera.so:/system/lib/libcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/htc/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so \\
    vendor/htc/__DEVICE__/proprietary/MS-HTCEMR-KNT20-02-A0-GB-02.apk:/system/app/MS-HTCEMR-KNT20-02-A0-GB-02.apk \\
    vendor/htc/__DEVICE__/proprietary/librilswitch.so:/system/lib/librilswitch.so \\
    vendor/htc/__DEVICE__/proprietary/libganril.so:/system/lib/libganril.so \\
    vendor/htc/__DEVICE__/proprietary/libkineto.so:/system/lib/libkineto.so \\
    vendor/htc/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/htc/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/htc/__DEVICE__/proprietary/liboemcamera.so:/system/lib/liboemcamera.so \\
    vendor/htc/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/htc/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/htc/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/htc/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/htc/__DEVICE__/proprietary/vpimg:/system/etc/vpimg
EOF

./setup-makefiles.sh
