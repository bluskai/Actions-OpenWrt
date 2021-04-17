#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.10.10.2/g' package/base-files/files/bin/config_generate

# 升级frp
sed -i 's/0.34.3/0.36.2/g' package/lean/frp/Makefile
sed -i 's/f03e280d9e8fdd4948ed6a5d141e927bf9b5168d7a47a4f3e90a08065e5f192d/b9dca438385ddbbcc4c7dade3d5e940e1b61b27dd45a012876eaaa41ec2da2a9/g' package/lean/frp/Makefile
