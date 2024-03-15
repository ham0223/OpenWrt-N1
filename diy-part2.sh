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
sed -i 's/192.168.1.1/192.168.123.2/g' package/base-files/files/bin/config_generate

# 增加 alist （在 ./scripts/feeds install -a 操作之后更换 golang 版本）
#rm -rf feeds/packages/lang/golang
#svn export https://github.com/sbwml/packages_lang_golang/branches/19.x feeds/packages/lang/golang

# tmp fix-20230819之前编译失败回滚配置
#wget -O ./package/kernel/linux/modules/netsupport.mk https://raw.githubusercontent.com/coolsnowwolf/lede/3ef1f5ade3b8f6527bbc4eb9494138de66e07d13/package/kernel/linux/modules/netsupport.mk

# 2023-08-29 aliyundrive-webdav 编译报错回滚到2.2.1
#curl -o ./feeds/packages/multimedia/aliyundrive-webdav/Makefile https://raw.githubusercontent.com/Jason6111/OpenWrt_Personal/main/other/aliyun/Makefile

# 临时修复acpid,aliyundrive-webdav,xfsprogs,perl-html-parser,v2dat 导致的编译失败问题
#sed -i 's#flto#flto -D_LARGEFILE64_SOURCE#g' feeds/packages/utils/acpid/Makefile
#sed -i 's/stripped/release/g' feeds/packages/multimedia/aliyundrive-webdav/Makefile
#sed -i 's#SYNC#SYNC -D_LARGEFILE64_SOURCE#g' feeds/packages/utils/xfsprogs/Makefile
sed -i 's/REENTRANT -D_GNU_SOURCE/LARGEFILE64_SOURCE/g' feeds/packages/lang/perl/perlmod.mk
sed -i 's#GO_PKG_TARGET_VARS.*# #g' feeds/packages/utils/v2dat/Makefile

# 修复v2ray-plugin编译失败
rm -rf feeds/luci/applications/luci-app-mosdns
#rm -rf feeds/packages/net/{alist,adguardhome,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
