

# network service order - 10.6 and earlier
alias network_service_order_priority="networksetup -listnetworkserviceorder"
alias network_service_order_priority_ethernet="echo networksetup -ordernetworkservices Ethernet \`networksetup -listallnetworkservices | grep -v 'An asterisk ' |  sed s/\^'*'// | grep -xv Ethernet | sed 's/.*/\"&\"/' | tr '\n' ' '\` | bash"
alias network_service_order_priority_airport="echo networksetup -ordernetworkservices AirPort \`networksetup -listallnetworkservices | grep -v 'An asterisk ' |  sed s/\^'*'// | grep -xv AirPort | sed 's/.*/\"&\"/' | tr '\n' ' '\` | bash"

# network service order - 10.7 and later (compatible with 10.8 mountian lion) 
#    - note if prefer not be prompted for a password, then refer the the wiki page for this project 
#      which conatins links to information relating to configuring the sudoers file (using visudo)
alias network_service_order_priority_ethernet="echo sudo /usr/sbin/networksetup -ordernetworkservices \\\"Ethernet\\\" \`/usr/sbin/networksetup -listallnetworkservices | grep -v 'An asterisk ' | sed s/\^'*'// | grep -xv \"Ethernet\" | sed 's/.*/\"&\"/' | tr '\n' ' ' | sed 's/.$//' | sed 's/\"/\\\\\"/g'\` | bash"
alias network_service_order_priority_airport="echo sudo /usr/sbin/networksetup -ordernetworkservices \\\"Wi-Fi\\\" \`/usr/sbin/networksetup -listallnetworkservices | grep -v 'An asterisk ' | sed s/\^'*'// | grep -xv \"Wi-Fi\" | sed 's/.*/\"&\"/' | tr '\n' ' ' | sed 's/.$//' | sed 's/\"/\\\\\"/g'\` | bash"
alias network_service_order_priority="networksetup -listnetworkserviceorder"

# networksetup [-setnetworkserviceenabled networkservice on | off]

# vpn connect / disconnect
alias vpn_connect="/usr/bin/env osascript -e 'tell application \"System Events\"' -e 'tell current location of network preferences' -e 'set VPN to service \"VPN NAME\" -- your VPN name here' -e 'if exists VPN then connect VPN' -e 'end tell' -e 'end tell' > /dev/null"
alias vpn_disconnect="/usr/bin/env osascript -e 'tell application \"System Events\"' -e 'tell current location of network preferences' -e 'set VPN to service \"VPN NAME\" -- your VPN name here' -e 'if exists VPN then disconnect VPN' -e 'end tell' -e 'end tell' > /dev/null"


# Screen Sharing App
alias screen_sharing="open /System/Library/CoreServices/Screen\ Sharing.app"
alias ovnc="open vnc://" # you can add a favoite into this - vnc://user@server:port to connect - if not it will just open the screen sharing application

# apple airport command line utility
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# airport power (10.6 and earlier)
alias airport_power_on="networksetup -setairportpower AirPort on"
alias airport_power_off="networksetup -setairportpower AirPort off"

# airport power alias (10.8 typical setup)
alias airport_power_on="networksetup -setairportpower en1 on"
alias airport_power_off="networksetup -setairportpower en1 off"

# VLC Rotate Video
alias vlc_rotate="/Applications/VLC.app/Contents/MacOS/VLC --vout-filter=transform --transform-type=180"

# recursive md5
alias checksum_directory_recursivly="find ./* -type f -exec md5 {} + | awk '{print \$1}' | sort | md5"

# Date Month
alias month_number="date +%m"

# Start Screen Saver
alias screensaver="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

# Battery Cycle Count
alias battery_cylce_count="system_profiler SPPowerDataType | grep -i Cycle | awk -F \"Cycle count: \" '{print \$2}'"

# Hardware Information
alias hardware_information_SATA="system_profiler SPSerialATADataType"
alias hardware_information_USB="system_profiler SPUSBDataType"
alias hardware_information_FIREWIRE="system_profiler SPFireWireDataType"
alias hardware_information_THUNDERBOLT="system_profiler SPThunderboltDataType"

# Keyspan
alias keyspan_connect_and_log="screen -L /dev/tty.KeySerial1"
alias keyspan_connect="screen /dev/tty.KeySerial1"

# flush dns 10.5
alias flush_dns_settings="dscacheutil -flushcache"

# Safe Sleep
alias safesleep_enabled='osascript -e "do shell script \"sudo sudo pmset -a hibernatemode 1\" with administrator privileges" 2>/dev/null'
alias safesleep_disabled='osascript -e "do shell script \"sudo sudo pmset -a hibernatemode 0\" with administrator privileges" 2>/dev/null'

# LS Setup
alias ls="/bin/ls -G"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"


