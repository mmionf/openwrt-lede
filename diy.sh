./scripts/feeds update -a >/dev/null
rm -rf feeds/luci/themes/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile

clone_directory(){
git clone --depth=1 -b $2 $1 other;shift 2
mv -f $@ package/
rm -rf other
}

clone_directory https://github.com/coolsnowwolf/luci openwrt-23.05 other/applications/{luci-app-passwall,luci-app-passwall2}
rm -fr feeds/helloworld/luci-app-ssr-plus
clone_directory https://github.com/fw876/helloworld master other/luci-app-ssr-plus
./scripts/feeds install -a
