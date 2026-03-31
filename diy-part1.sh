#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add feed sources for plugins
# ShadowSocksR Plus+, OpenClash, etc.
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# PassWall, PassWall 2
echo 'src-git passwall https://github.com/Openwrt-Passwall/openwrt-passwall' >>feeds.conf.default
# iStore
echo 'src-git istore https://github.com/linkease/istore' >>feeds.conf.default
# OpenClash
echo 'src-git openclash https://github.com/vernesong/OpenClash' >>feeds.conf.default
# nikki (Mihomo)
echo 'src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki' >>feeds.conf.default
