

# network service order - (note : on 10.7 and later you should change the name of the "AirPort" interface to "Wi-Fi")
alias network_service_order_priority_ethernet="echo networksetup -ordernetworkservices Ethernet \`networksetup -listallnetworkservices | grep -v 'An asterisk ' |  sed s/\^'*'// | grep -v Ethernet | sed 's/.*/\"&\"/' | tr '\n' ' '\` | bash"
alias network_service_order_priority_airport="echo networksetup -ordernetworkservices AirPort \`networksetup -listallnetworkservices | grep -v 'An asterisk ' |  sed s/\^'*'// | grep -v AirPort | sed 's/.*/\"&\"/' | tr '\n' ' '\` | bash"
# Screen Sharing App
alias screen_sharing="open /System/Library/CoreServices/Screen\ Sharing.app"

# apple airport command line utility
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# VLC Rotate Video
alias vlc_rotate="/Applications/VLC.app/Contents/MacOS/VLC --vout-filter=transform --transform-type=180"

# recursive md5
alias checksum_directory_recursivly="find ./* -type f | xargs  md5 | md5"

# Date Month
alias month_number="date +%m"

# Start Screen Saver
alias screensaver="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

# Battery Cycle Count
alias battery_cylce_count="system_profiler SPPowerDataType | grep -i Cycle | awk -F \"Cycle count: \" '{print \$2}'"

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


