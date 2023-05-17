# paste the clip board to the command line
alias pbp="xclip -o && echo"

# copy clipboard from remote (macOS) system
alias remotehost_pbcopy="ssh login@hostname 'pbpaste' | xclip -sel clip"

# paste clipboard to remote (macOS) system
alias remotehost_pbpaste="xclip -o | ssh login@hostname 'cat - | pbcopy'"

# copy clipboard from remote (gnu/linux) system
alias remotehost_pbcopy="ssh login@hostname 'xclip -o' | xclip -sel clip"

# paste clipboard to remote (gnu/linux) system
alias remotehost_pbpaste="xclip -o | ssh login@hostname 'cat - | xclip -sel clip'"

# Date Month
alias month_number="date +%m"

# VLC Rotate Video
alias vlc_rotate="vlc--vout-filter=transform --transform-type=180"

# temporarly start a vnc server connected to your session
vnc_serve="x11vnc -noipv6 -forever -listen 127.0.0.1 -usepw -find"

# show the active windos for an application using xdotool
alias show="~/bin/show_all_xdotool.bash"

# show the weather
alias weather="curl https://wttr.in/Tokyo"
alias weather-auto-update="~bin/weatherupdate.bash"

# dump the deconf /org/ to a file (you must make the backup directory manually) 
alias dconf-backup-now="dconf dump /org/ >> ~/backup-config/dconf-org-backup-(date +%y-%m-%d).txt"

# quickly edit the esspanso file with sublime text in a new window
alias edit-esspanso="subl -n ~/.config/espanso/match/base.yml"

# get the key press hex code - fish only (unless you launch fish and run the command)
alias fish_key_reader="/usr/bin/fish_key_reader"

# start cinnamon screensaver
alias screensaver="cinnamon-screensaver-command --activate --lock 2> /dev/null"

# cinnamon screensaver timeout
alias screensaver_timeout_1min="gsettings set org.cinnamon.desktop.session idle-delay 60"
alias screensaver_timeout_2min="gsettings set org.cinnamon.desktop.session idle-delay 120"
alias screensaver_timeout_30min="gsettings set org.cinnamon.desktop.session idle-delay 1800"

# cinnamon get screensaver timeout - fish specific syntax
alias screensaver_current_timeout="echo (gsettings get org.cinnamon.desktop.session idle-delay | awk '{print \$2}') seconds / or / ( math ( gsettings get org.cinnamon.desktop.session idle-delay | awk '{print \$2}' ) / 60) miniutes"

# launch GUI application in with X authority
alias gksudo='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'



