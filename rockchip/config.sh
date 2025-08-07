pkg_name=xray-core
ls feeds/helloworld/$pkg_name/
rm -rf feeds/helloworld/$pkg_name/Makefile
cd feeds/helloworld/$pkg_name/
wget https://github.com/immortalwrt/packages/raw/refs/heads/openwrt-24.10/net/xray-core/Makefile
cd -
