# Additional packages

# SnapCamera support
PRODUCT_PACKAGES += \
    SnapCamera

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

# CellBroadcastReceiver
PRODUCT_PACKAGES += \
    CellBroadcastReceiver

# Exchange support
PRODUCT_PACKAGES += \
    Exchange2

# Additional apps
PRODUCT_PACKAGES += \
    Music \
    Recorder \
    WeatherClient

# Weather
PRODUCT_COPY_FILES += \
    vendor/revengeos/prebuilt/etc/permissions/com.android.providers.weather.xml:system/etc/permissions/com.android.providers.weather.xml \
    vendor/revengeos/prebuilt/etc/default-permissions/com.android.providers.weather.xml:system/etc/default-permissions/com.android.providers.weather.xml

# RevengeDelta
ifeq ($(REVENGEOS_BUILDTYPE),OFFICIAL)
PRODUCT_PACKAGES += \
   RevengeDelta
endif

# NTFS-3G support
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mkfs.ntfs \
    mount.ntfs

# ExFAT support
WITH_EXFAT ?= true
ifeq ($(WITH_EXFAT),true)
TARGET_USES_EXFAT := true
PRODUCT_PACKAGES += \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat
endif

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Permissions
PRODUCT_PACKAGES += \
    privapp-permissions-revengeos.xml

# TCP Connection Management
PRODUCT_PACKAGES += tcmiface
PRODUCT_BOOT_JARS += tcmiface
