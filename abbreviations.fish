#
##  handy fish abbreviations (AKA abbr)
#

#
## setup / usage
#
# select the abbr which you like and add them into
# your ~/.config/fish/config.fish

#
## clipboard management
#

abbr -a fcc fish_clipboard_copy
abbr -a fcp fish_clipboard_paste
abbr -a fcc_ --position anywhere '| string collect | fish_clipboard_copy'

