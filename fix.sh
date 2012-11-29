#!/bin/sh
echo $1
if [ -f /usr/local/PaloAltoNetworks/PanService/uninstall_netconnect.sh ]; then
  sudo /usr/local/PaloAltoNetworks/PanService/uninstall_netconnect.sh
fi

function rm_files() {
  sudo rm -ir $1
}

rm_files /usr/local/PaloAltoNetworks
rm_files ~/Library/Caches/com.paloaltonetworks.NetConnect
rm_files ~/Library/Preferences/com.paloaltonetworks.NetConnect.plist
rm_files /var/root/Library/Preferences/PanService.plist
rm_files /var/root/Library/Caches/com.paloaltonetworks.NetConnect
rm_files /tmp/NetConnect.log
