# boot init script by openwrt
cat <<'EOF' >package/base-files/files/etc/uci-defaults/99-init.sh
uci set network.lan.ipaddr=192.168.1.18
uci commit
passwd -d root
#
cat <<'EOL' >/etc/hotplug.d/iface/12-eth1
#!/bin/sh

ETHTOOL=/usr/sbin/ethtool

$ETHTOOL -i eth0 | grep r8152 && \
[ "$ACTION" = "ifup" ] && \
$ETHTOOL -K eth0 rx off tx off

$ETHTOOL -i eth1 | grep r8152 && \
[ "$ACTION" = "ifup" ] && \
$ETHTOOL -K eth1 rx off tx off
EOL
EOF
#
