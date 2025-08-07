pkg_path='feeds/packages/net'
find $pkg_path/xray-core/ $pkg_path/v2ray-plugin/ \
 $pkg_path/xray-plugin/ -name Makefile -delete
wget https://github.com/immortalwrt/packages/raw/refs/heads/master/net/xray-plugin/Makefile \
 -P $pkg_path/xray-plugin/
 wget https://github.com/immortalwrt/packages/raw/refs/heads/master/net/v2ray-plugin/Makefile \
  -P $pkg_path/v2ray-plugin/
  wget https://github.com/immortalwrt/packages/raw/refs/heads/master/net/xray-core/Makefile \
   -P $pkg_path/xray-core/
