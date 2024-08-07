# Handy Alias #

About
--------
The scripts are basically handy alias files for BASH, ZSH and FISH.

Note for FISH alias you will need to slightly alter the command : 
   1. `alias my_amazing_thing "echo \"my amazing thing\"" # set the alias up in the current shell`
   2. `funcsave my_amazing_thing # save my_amazing_thing as a function in the deafult directory : ~/.config/fish/functions`


License: [GNU General Public License v3][1]

Additional Information
---------

Currently there is just an OS X specific file and a linux file which you may want to look at and pick parts which suite your terminal habits.

My favorite alias (specifically for OS X) is the network priority scripts which allow you to quickly switch your network priority between AirPort and Ethernet connections. Note if you are running macOS 10.6 or earlier you will need to make some changes to this alias. This is because under 10.7 and later the default name of the AirPort interface is "Wi-Fi". As such, just change as required if you are running a very old version of macOS for some reason. If you have other network interfaces the two listed in the file will provide you with a template for building others to control connections via cellular devices or other network connections you may have available on your system.

If you have any handy macOS or GNU/LINUX alias just fork and then put in a pull request. 

Any questions then just let me know.

Pick and chose the ones which are handy for you =:^)

Mac OS Specific Information - Wiki
---------
If you are using any handy aliass specific to macOS you may find it convenient to allow your user to run some system tools (which normally need to be run as a super user) as yourself in which case, [this wiki page will provide some setup details][2].

  [1]: http://www.gnu.org/licenses/gpl.html  
  [2]: https://github.com/henri/handy-alias/wiki/Network-Service-Order-%3A-Mac-OS-X

