#!/bin/sh
      firewall-cmd --new-zone=ibtkar --permanent 
      firewall-cmd --reload
      firewall-cmd --permanent --zone=ibtkar --add-interface=ens33
      firewall-cmd --set-default-zone=ibtkar 
      firewall-cmd --zone=ibtkar --set-target=DROP --permanent
      firewall-cmd --permanent --zone=ibtkar --add-port=22/tcp 
      firewall-cmd --permanent --zone=ibtkar --add-port=80/tcp 
      firewall-cmd --permanent --zone=ibtkar --add-port=443/tcp 
      firewall-cmd --permanent --zone=ibtkar --add-port=53/tcp 
      firewall-cmd --permanent --zone=ibtkar --add-port=53/udp 
      firewall-cmd --reload

