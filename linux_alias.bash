# CROSS COMPATIABLE BASH, ZSH, and FISH FUNCTIONS (just alter the format)
# ///////////////////////////////////////////////////////////////////////

# copy clipboard from standard to standard output (eg. pipe from clipboard)
alias pbc="xclip" # standard input to selection buffer
alias pbcopy="xclip -sel c" # standard input to clipboard
alias pbcopy="xclip -selection clipboard" # standard input to clipboard

# paste the clip board to the command line
alias pbp="xclip -o && echo" # selection buffer to standard out
alias pbpaste="xclip -sel c -o" # clipboard to standard out
alias pbpaste="xclip -selection clipboard -o" # clipboard to standard out

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

# alterative temporary vnc server setup : vino-preferences
# additional information :  https://askubuntu.com/questions/304017/how-to-set-up-remote-desktop-sharing-through-ssh
# sudo -s
# export DISPLAY=:0.0
# xhost +
# /usr/lib/vino/vino-server & 

# another vnc approach is to load a service with systemctl / init.d

# show the active windows for an application using xdotool
alias show="~/bin/show_all_xdotool.bash"

# show the weather
alias weather="curl https://wttr.in/Tokyo"
alias weather-auto-update="~bin/weatherupdate.bash"

# termdown shortcut blink plus basic
alias td="termdown --no-figlet -b"

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

# allow / disallow root to start x apps
alias x_add_root="xhost +si:localuser:root"
alias x_remove_root="xhost -si:localuser:root"

# start a screen session running sxhkd ( possible sxhkd config file : https://gist.github.com/henri/883f4ef16bf81effd992a8ce91d619eb )
# allows fake key remapping - fine for most typing speed purposes 
alias start_sxhkd="screen -S sxhkd_keys_mod -md bash -lc sxhkd"

# send notification to cinnimon
alias lunchtime="/usr/bin/notify-send  \"Lunch: \" \"Please, take a lunch!\""

# setup micro view only mode
alias mview="micro -readonly on"


# FISH FUNCTIONS ONLY BELOW (unless you alter them significantly)
# ////////////////////////////////////////////////////////////////////////////////////////
# Link to Fish Snippits : https://gist.github.com/henri/4f034f04b35c01e089e98350c902bda8

# fish function - use firefox to search for a gist (replace with your username to search your gist) - this will launch firefox if it is not running (otherwise it will open a new tab).
function gist_search ; firefox "https://gist.github.com/search?q=user%3Ahenri+%22$argv%22&ref=searchresults" ; end

# setup an alias to clear the enviroment varaible : SSH_AUTH_SOCK # this is not --erase just clear it to empty 
alias -s ssh-agent-unset "set -gx SSH_AUTH_SOCK_OLD \$SSH_AUTH_SOCK ; set -gx SSH_AUTH_SOCK \"\" ; echo SSH_AUTH_SOCK : (echo \$SSH_AUTH_SOCK) ; echo SSH_AUTH_SOCK_OLD : (echo \$SSH_AUTH_SOCK_OLD) echo 'To Reset SSH_AUTH_SOCK : ssh-agent-reset'"

# reconfigure the envirment variable SSH_AUTH_SOCK back to what it was before running the ssh-agent-unset function/alias
alias -s ssh-agent-reset "set -gx SSH_AUTH_SOCK \$SSH_AUTH_SOCK_OLD ; set -gx SSH_AUTH_SOCK_OLD \"\" ; echo SSH_AUTH_SOCK : (echo \$SSH_AUTH_SOCK) ; echo SSH_AUTH_SOCK_OLD : (echo \$SSH_AUTH_SOCK_OLD) ; echo 'To Unset SSH_AUTH_SOCK : ssh-agent-unset' "


