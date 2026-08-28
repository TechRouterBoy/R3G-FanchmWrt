#!/bin/bash
cd openwrt
# 修改路由器后台IP为192.168.5.1
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
# 屏蔽系统自带的开源mt76无线驱动
# sed -i '/mt76/d' package/kernel/linux/modules/wireless.mk
#new test
