pkg_path='feeds/helloworld/v2ray-plugin'
rm $pkg_path/Makefile
wget https://github.com/immortalwrt/packages/raw/refs/heads/master/net/v2ray-plugin/Makefile \
 -P $pkg_path/
