#!/bin/bash
cd openwrt

#删除开源无线驱动，替换hanwckf闭源驱动
rm -rf package/feeds/openwrt/mt76
git clone https://github.com/hanwckf/mt76‑openwrt package/mt76
wget https://raw.githubusercontent.com/sonyxl1/Xiaomi‑R3G/master/mt7621.conf -O package/mt76/src/mt7621.conf

# 此处把之前报错的wireless.mk那一行已经彻底删掉，不再执行

cd ..

