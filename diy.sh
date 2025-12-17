./scripts/feeds update -a >/dev/null
rm -rf feeds/luci/themes/luci-theme-argon
git clone --depth=1 -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon

sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile

clone_directory(){
git clone --depth=1 -b $2 $1 other
mv -f $3 $4
rm -rf other
}

clone_directory https://github.com/coolsnowwolf/luci openwrt-23.05 other/applications/{luci-app-passwall,luci-app-passwall2} package/
mv feeds/helloworld/luci-app-ssr-plus package/
./scripts/feeds install -a
