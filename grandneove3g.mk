# Copyright (C) 2017 The Lineage Project
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

LOCAL_PATH := device/samsung/grandneove3g

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/grandneove3g/grandneove3g-vendor.mk)
$(call inherit-product, device/samsung/scx35-common/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/ist30xx_ts_input.kl:system/usr/keylayout/ist30xx_ts_input.kl \
	$(LOCAL_PATH)/keylayout/samsung-keypad.kl:system/usr/keylayout/samsung-keypad.kl \
	$(LOCAL_PATH)/keylayout/sci-keypad.kl:system/usr/keylayout/sci-keypad.kl

# Media
PRODUCT_PACKAGES += \
	media_profiles.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/media/mediaserver.rc:system/etc/init/mediaserver.rc

# Rootdir files
PRODUCT_PACKAGES += \
	init.sc8830.rc \
	init.sc8830.usb.rc \
	init.grandneove3g_base.rc \
	ueventd.sc8830.rc
# RIL
PRODUCT_PACKAGES += \
	rild.rc

# Bluetooth
PRODUCT_PACKAGES += \
	bt_vendor.conf

# GPS
PRODUCT_PACKAGES += \
	gps.xml \

# WiFi
PRODUCT_PACKAGES += \
	wpa_supplicant.conf \
	nvram_net.txt \
	nvram_mfg.txt

# Rootdir
PRODUCT_PACKAGES += \
	fstab.sc8830

# Media
PRODUCT_PACKAGES += \
	media_codecs.xml

# WiFi
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_grandneove3g
PRODUCT_DEVICE := grandneove3g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-I9060I
