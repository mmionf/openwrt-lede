pkg_name=xray-core
rm -rf package/feeds/helloworld/$pkg_name/Makefile
wget https://github.com/immortalwrt/packages/raw/refs/heads/openwrt-24.10/net/xray-core/Makefile -P package/feeds/helloworld/$pkg_name/ 
