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


# start cinnamon screensaver
alias screensaver="cinnamon-screensaver-command --activate --lock 2> /dev/null"

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


