#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Add feed sources (do NOT use sed to uncomment, feeds.conf.default already has commented helloworld)
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/Openwrt-Passwall/openwrt-passwall' >>feeds.conf.default
echo 'src-git istore https://github.com/linkease/istore' >>feeds.conf.default
# docker feed 已废弃移除，如需 Docker 支持请在 make menuconfig 中启用 CONFIG_PACKAGE_docker 等选项
