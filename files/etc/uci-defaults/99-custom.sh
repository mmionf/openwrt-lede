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
