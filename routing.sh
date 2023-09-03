#!/bin/bash
ip route add default via 192.168.0.1 dev eth0 table first
ip route add default via 192.168.0.1 dev eth1 table second
ip rule add from 10.1.0.100 table first
ip rule add from 10.1.0.200 table second

# add SNAT rules for both containers (replace 192.168.0.x to the IP addresses assigned to eth0 and eth1 — or the interfaces you use)
iptables -t nat -A POSTROUTING -s 10.1.0.100 -j SNAT --to-source 192.168.0.1
iptables -t nat -A POSTROUTING -s 10.1.0.200 -j SNAT --to-source 192.168.0.2