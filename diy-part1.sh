#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default


sed -i 's/1.8.8/1.8.10/g' package/network/utils/iptables/Makefile
sed -i 's/bz2/xz/g' package/network/utils/iptables/Makefile
sed -i 's/71c75889dc710676631553eb1511da0177bbaaf1b551265b912d236c3f51859f/5cc255c189356e317d070755ce9371eb63a1b783c34498fb8c30264f3cc59c9c/g' package/network/utils/iptables/Makefile
