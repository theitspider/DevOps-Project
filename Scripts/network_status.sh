#!/bin/bash

echo "===================="
echo "Network Interfaces"
echo "===================="
ip addr show

echo "===================="
echo "Routing Table"
echo "===================="
ip route show

echo "===================="
echo "DNS Configuration"
echo "===================="
cat /etc/resolv.conf

echo "===================="
echo "Network Connections"
echo "===================="
ss -tuln

echo "===================="
echo "ARP Cache"
echo "===================="
ip neigh show

echo "===================="
echo "Ping Test (www.google.com)"
echo "===================="
ping -c 4 www.google.com

echo "===================="
echo "Traceroute to www.google.com"
echo "===================="
traceroute www.google.com

echo "===================="
echo "Firewall Status (ufw)"
echo "===================="
sudo ufw status

echo "===================="
echo "Network Manager Status"
echo "===================="
sudo systemctl status NetworkManager

echo "===================="
echo "Current Network Usage (iftop)"
echo "===================="
echo "Note: Press q to exit"
sudo iftop -t -s 5

echo "===================="
echo "Network Configuration Script Completed"
echo "===================="
