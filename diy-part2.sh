#!/bin/bash
cd openwrt
# 删除开源无线驱动，替换成hanwckf闭源驱动
rm -rf package/feeds/openwrt/mt76
git clone https://github.com/hanwckf/mt76-openwrt package/mt76
wget https://raw.githubusercontent.com/sonytxl/Xiaomi-R3G/master/mt7621.conf -O package/mt76/src/mt7621.conf

# 安装TTYD网页终端、DDNSTO内网穿透
./scripts/feeds update small
./scripts/feeds install luci-app-ttyd luci-app-ddnsto
