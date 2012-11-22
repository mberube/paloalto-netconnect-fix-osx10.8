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
rmrf /private/var/root/Library/Preferences/PanService.plist
rmrf /private/var/root/Library/Caches/com.paloaltonetworks.NetConnect
rmrf /private/var/folders/5d/38f6qwv96c5c4m9cszyp73_40000gn/T/NetConnect.pkg
rmrf /private/tmp/NetConnect.log
