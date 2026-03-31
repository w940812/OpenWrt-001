#!/bin/bash
#
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

# Remove problematic packages
rm -rf package/kernel/ksmbd
rm -rf feeds/packages/net/ksmbd-tools
rm -rf feeds/luci/applications/luci-app-ksmbd
rm -rf package/lean/autosamba
