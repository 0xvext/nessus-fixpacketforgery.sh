#!/bin/bash

FIXPACKETLOG=/root/nessus-fixpacketforgery.log

date >> $FIXPACKETLOG

echo "####################" >> $FIXPACKETLOG

echo "Setting capabilities on nessusd..." >> $FIXPACKETLOG

setcap "cap_net_admin,cap_net_raw,cap_sys_resource+eip" /opt/nessus/sbin/nessusd

echo "Done." >> $FIXPACKETLOG

echo "Setting capabilities on nessus-service..." >> $FIXPACKETLOG

setcap "cap_net_admin,cap_net_raw,cap_sys_resource+eip" /opt/nessus/sbin/nessus-service

echo "Done." >> $FIXPACKETLOG

echo "Restarting Nessus service..." >> $FIXPACKETLOG

service nessusd restart

echo "Done." >> $FIXPACKETLOG

echo "####################" >> $FIXPACKETLOG
