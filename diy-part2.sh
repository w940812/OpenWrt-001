#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Disable ksmbd (incompatible with kernel 6.12)
# ksmbd 3.5.4 has API incompatibility with newer kernels (struct file_lock changes)
sed -i 's/CONFIG_PACKAGE_kmod-ksmbd=y/# CONFIG_PACKAGE_kmod-ksmbd is not set/g' .config
sed -i 's/CONFIG_PACKAGE_ksmbd-tools=y/# CONFIG_PACKAGE_ksmbd-tools is not set/g' .config
sed -i 's/CONFIG_PACKAGE_luci-app-ksmbd=y/# CONFIG_PACKAGE_luci-app-ksmbd is not set/g' .config
