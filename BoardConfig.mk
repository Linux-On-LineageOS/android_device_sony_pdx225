#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/sony/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/pdx225

# Health
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_PATH := /sys/class/battchg_ext/smart_charging_interruption
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_ENABLED := 0
TARGET_HEALTH_CHARGING_CONTROL_CHARGING_DISABLED := 1

# Kernel
TARGET_KERNEL_CONFIG += diffconfig/pdx225.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Include the proprietary files BoardConfig.
include vendor/sony/pdx225/BoardConfigVendor.mk
