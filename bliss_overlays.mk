#
# Copyright (C) 2018-2019 The BlissRoms Project
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

# Common Overlays
DEVICE_PACKAGE_OVERLAYS += vendor/overlays/overlay/common

# Allow overlays to be excluded from enforcing RRO
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/overlays/overlay/common

#PRODUCT_PACKAGES += \
#        GVM-SBH-L \
#        GVM-SBH-M \
#        GVM-SBH-XL \
#        GVM-URM-M \
#        GVM-URM-L \
#        GVM-URM-R \
#        GVM-URM-S

# Navbar Themes
#PRODUCT_PACKAGES += \
#    StockAsusOverlay \
#   NavbarAsusOverlay \
#    NavbarOnePlusOverlay \
#    NavbarOneUiOverlay \
#    NavbarTecnoCamonOverlay

# QS header styles
#PRODUCT_PACKAGES += \
#    QSHeaderBlack \
#    QSHeaderGrey \
#    QSHeaderLightGrey \
#    QSHeaderAccent \
#    QSHeaderTransparent

# Fonts
#PRODUCT_COPY_FILES += \
#    $(call find-copy-subdir-files,*,vendor/overlays/prebuilt/system/fonts,$(TARGET_COPY_OUT_SYSTEM)/fonts)

# Gradient
#PRODUCT_PACKAGES += \
#    AccentColorGradientIndianOverlay

# Switch themes
#PRODUCT_PACKAGES += \
#    ContainedSwitch \
#    MD2Switch \
#    NarrowSwitch \
#    OnePlusSwitch \
#    RetroSwitch \
#    StockSwitch \
#    TelegramSwitch

# Gapps overlays
ifeq ($(BLISS_BUILD_VARIANT), gapps)
DEVICE_PACKAGE_OVERLAYS += \
    vendor/overlays/overlay/gapps

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/overlays/overlay/gapps
endif

#ifeq ($(BLISS_BUILD_VARIANT), gapps)
#ifneq ($(filter blueline bonito coral crosshatch sunfish taimen,$(BLISS_BUILD)),)
#DEVICE_PACKAGE_OVERLAYS += \
#    vendor/overlays/overlay/pixel
#
#PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/overlays/overlay/pixel
#endif
#endif

# Navbar
PRODUCT_PACKAGES += \
    GesturalNavigationOverlayLong \
    GesturalNavigationOverlayMedium \
    GesturalNavigationOverlayHidden

# Pill radius
PRODUCT_PACKAGES += \
    GesturalNavigationRadiusLow \
    GesturalNavigationRadiusVeryLow \
    GesturalNavigationRadiusHidden

# QS Tile styles
include vendor/overlays/QSThemes/QSThemes.mk

# Accents
include vendor/overlays/accents/accents.mk

# System themes
include vendor/overlays/themes/backgrounds/system_themes.mk

# Primary Colors
include vendor/overlays/primary/primary_colors.mk

# Fonts
PRODUCT_PACKAGES += \
    Custom-Fonts
