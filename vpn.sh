#!/bin/bash

if ip a | grep tun0 1>2;then
   echo "VPN 🟢"
   read -p "Kill VPN?: " -n 1 -r 
      if [[ $REPLY == ["Yy"] ]]; then
	echo
	sudo pkill openvpn3
      fi
else
  echo "VPN 🔴"
   read -p "Start VPN?: " -n 1 -r 
      if [[ $REPLY == ["Yy"] ]]; then
        echo
        python3 /home/work/.local/bin/auto_vpn_login.py
      fi

fi
