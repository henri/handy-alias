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
