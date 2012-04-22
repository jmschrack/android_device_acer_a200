#
# Copyright (C) 2012 The CyanogenMod Project
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
#

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso_e.rc:root/init.picasso_e.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso_e.usb.rc:root/init.picasso_e.usb.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/ueventd.picasso_e.rc:root/ueventd.picasso_e.rc \

# prebuilt configs
PRODUCT_COPY_FILES += \
    device/acer/picasso_e/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/acer/picasso_e/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/acer/picasso_e/prebuilt/usr/idc/acer-touch.idc:system/usr/idc/acer-touch.idc \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, build/target/product/full_base.mk)

# inherit proprietary files
$(call inherit-product-if-exists, vendor/acer/picasso_e/picasso_e-vendor.mk)

# inherit iconia-common
$(call inherit-product, device/acer/t20-common/t20-common.mk)

PRODUCT_DEVICE := picasso_e
PRODUCT_MODEL  := A200

