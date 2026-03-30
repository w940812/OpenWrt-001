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

# Add feed sources
# ShadowSocksR Plus+, OpenClash, etc.
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# PassWall, PassWall 2
echo 'src-git passwall https://github.com/Openwrt-Passwall/openwrt-passwall' >>feeds.conf.default
# iStore
echo 'src-git istore https://github.com/linkease/istore' >>feeds.conf.default
# OpenClash (alternative source in case helloworld doesn't have latest)
echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
# nikki (Mihomo transparent proxy)
echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki' >>feeds.conf.default
