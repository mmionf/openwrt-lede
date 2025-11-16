# uci set network.lan.gateway=192.168.1.8
uci set network.lan.dns=223.5.5.5
uci add_list network.@device[0].ports=eth2
uci set network.lan.ipaddr=192.168.2.1
uci commit

