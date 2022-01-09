#!/bin/bash
# Copyright (c) P3TERX <https://p3terx.com>
#

# 配置自定义主题
#
# > 清除旧版argon主题并拉取最新版
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/community/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config package/community/luci-app-argon-config
#
# > 修改默认主题为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
#

# 集成自定义插件
#
# > Dockerman
# git clone https://github.com/lisaac/luci-lib-docker package/community/luci-lib-docker
# git clone https://github.com/lisaac/luci-app-dockerman package/community/luci-app-dockerman
#
# > iKoolProxy
git clone https://github.com/iwrt/luci-app-ikoolproxy package/community/luci-app-ikoolproxy
#
# > HelloWorld (vssr)
git clone https://github.com/jerrykuku/lua-maxminddb package/community/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/community/luci-app-vssr
#
# > OpenClash
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/community/luci-app-openclash
#

# 个性化配置修改
#
# > Mod
#sed -i '$i '"sed -i '/luciname/d' /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
#sed -i '$i '"echo 'luciname = \"Limitless\"' >> /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
sed -i '$i '"sed -i '/luciversion/d' /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
sed -i '$i '"echo 'luciversion = \"Mod\"' >> /usr/lib/lua/luci/version.lua"'' package/lean/default-settings/files/zzz-default-settings
#
# > 修改插件位置
sed -i 's/\"services\"/\"network\"/g' feeds/luci/applications/luci-app-upnp/luasrc/controller/upnp.lua
sed -i 's/\"system\"/\"services\"/g' package/lean/luci-app-ttyd/luasrc/controller/terminal.lua
sed -i '/\"NAS\"/d' package/lean/luci-app-zerotier/luasrc/controller/zerotier.lua
sed -i 's/\"vpn\"/\"services\"/g' package/lean/luci-app-zerotier/luasrc/controller/zerotier.lua
#
# > 修改插件名字
sed -i 's/"aMule设置"/"电驴下载"/g' `grep "aMule设置" -rl ./`
sed -i 's/"Argon 主题设置"/"主题设置"/g' `grep "Argon 主题设置" -rl ./`
sed -i 's/"CPU 使用率（%）"/"CPU负载"/g' `grep "CPU 使用率（%）" -rl ./`
sed -i 's/"DDNS.to内网穿透"/"内网穿透"/g' `grep "DDNS.to内网穿透" -rl ./`
sed -i 's/"Docker CE 容器"/"DockerCE"/g' `grep "Docker CE 容器" -rl ./`
sed -i 's/"iKoolProxy 滤广告"/"广告过滤"/g' `grep "iKoolProxy 滤广告" -rl ./`
sed -i 's/"TTYD 终端"/"网页终端"/g' `grep "TTYD 终端" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `grep "Turbo ACC 网络加速" -rl ./`
sed -i 's/"USB 打印服务器"/"打印服务"/g' `grep "USB 打印服务器" -rl ./`
sed -i 's/"带宽监控"/"监控"/g' `grep "带宽监控" -rl ./`
sed -i 's/"解锁网易云灰色歌曲"/"音乐解锁"/g' `grep "解锁网易云灰色歌曲" -rl ./`
sed -i 's/"实时流量监测"/"流量"/g' `grep "实时流量监测" -rl ./`
#