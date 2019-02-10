# nessus-fixpacketforgery.sh
A bash script to fix packet forgery errors in Nessus scanner

This bash script is intended to re-apply the fix for packet forgery settings in a non-root Nessus scanner through a reboot.

# Usage
Save this script file in /root/ and then set up a crontab job to run it once 120 seconds after a reboot. Type `crontab -e` and add the following line:

`@reboot sleep 120 && /root/nessus-fixpacketforgery.sh`

Log output from the script will be created in /root/nessus-fixpacketforgery.log
