uci set network.lan.gateway=192.168.1.8
uci set network.lan.dns=223.5.5.5
uci commit

cat <<'EOF' >/etc/hotplug.d/iface/eth
#!/bin/sh

ETHTOOL=/usr/sbin/ethtool

$ETHTOOL -i eth0 | grep r8152 && \
[ "$ACTION" = "ifup" ] && \
$ETHTOOL -K eth0 rx off tx off

$ETHTOOL -i eth1 | grep r8152 && \
[ "$ACTION" = "ifup" ] && \
$ETHTOOL -K eth1 rx off tx off
EOF

cat <<'EOA' >/etc/opkg/distfeeds.conf
src/gz 1 http://onecloud.lan/armv8/kmods/6.6.93-1-9e686cc1e0d5129337ca1ca28c2ab984
src/gz 2 http://onecloud.lan/armv8/packages/
src/gz 3 http://onecloud.lan/packages/aarch64_generic/base/
src/gz 4 http://onecloud.lan/packages/aarch64_generic/luci/
src/gz 5 http://onecloud.lan/packages/aarch64_generic/packages/
EOA
