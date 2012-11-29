#!/bin/sh
echo $1
if [ -f /usr/local/PaloAltoNetworks/PanService/uninstall_netconnect.sh ]; then
  sudo /usr/local/PaloAltoNetworks/PanService/uninstall_netconnect.sh
fi

function rmrf() {
  sudo rm -rf $1
}

rmrf /usr/local/PaloAltoNetworks
rmrf ~/Library/Caches/com.paloaltonetworks.NetConnect
rmrf ~/Library/Preferences/com.paloaltonetworks.NetConnect.plist
rmrf /var/root/Library/Preferences/PanService.plist
rmrf /var/root/Library/Caches/com.paloaltonetworks.NetConnect
rmrf /tmp/NetConnect.log
