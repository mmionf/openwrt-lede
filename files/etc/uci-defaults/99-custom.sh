# uci set network.lan.gateway=192.168.1.8
# uci set network.@device[0].ports='eth0'
uci set network.lan.dns=223.5.5.5
uci set network.lan.ipaddr=192.168.1.2
uci commit

