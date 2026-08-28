#!/bin/bash
cd openwrt

# 安装TTYD网页终端、DDNSTO内网穿透
# 注释掉update small，规避损坏的small源报错
# ./scripts/feeds update small
./scripts/feeds install luci‑app‑ttyd luci‑app‑ddnsto

cd ..
