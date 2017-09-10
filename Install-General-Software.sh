# set root password
sudo passwd

# update source
sudo apt-get update

# install Anaconda, suppose you have software file in Downloads directory
cd ~/Downloads
bash Anaconda2-4.4.0-Linux-x86_64.sh 

# install general software
sudo apt-get install cmake gcc-4.9 g++-4.9 vim terminator

# install opencv 2.4.13, suppose you have software file in Downloads directory
sh Install-OpenCV-2.4.13-In-Ubuntu.sh

# install VSCode, please download .deb package
sudo dpkg -i <file>.deb
sudo apt-get install -f # Install dependencies

# install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

# install hosts, you need edit the /etc/hosts file, and run sudo rcnscd restart

# config the terminator http://www.tuicool.com/articles/NV7jUb
mkdir -p ~/.config/terminator/
curl https://raw.github.com/ghuntley/terminator-solarized/master/config > ~/.config/terminator/config
sudo gedit ~/.config/terminator/config
## write these to the file
# [global_config]
#     title_transmit_bg_color = "#d30102"
#     focus = system
#     suppress_multiple_term_dialog = True
# [keybindings]
# [profiles]
#     [[default]]
#         palette = "#073642:#dc322f:#859900:#b58900:#268bd2:#d33682:#2aa198:#eee8d5:#002b36:#cb4b16:#586e75:#657b83:#839496:#6c71c4:#93a1a1:#fdf6e3"
#         copy_on_selection = True
#         background_image = None
#         background_darkness = 0.95
#         background_type = transparent
#         use_system_font = False
#         cursor_color = "#eee8d5"
#         foreground_color = "#839496"
#         show_titlebar = False
#         font = Monospace 11
#         background_color = "#002b36"
#     [[solarized-dark]]
#         palette = "#073642:#dc322f:#859900:#b58900:#268bd2:#d33682:#2aa198:#eee8d5:#002b36:#cb4b16:#586e75:#657b83:#839496:#6c71c4:#93a1a1:#fdf6e3"
#         background_image = None
#         cursor_color = "#eee8d5"
#         foreground_color = "#839496"
#         background_color = "#002b36"
#     [[solarized-light]]
#         palette = "#073642:#dc322f:#859900:#b58900:#268bd2:#d33682:#2aa198:#eee8d5:#002b36:#cb4b16:#586e75:#657b83:#839496:#6c71c4:#93a1a1:#fdf6e3"
#         background_color = "#fdf6e3"
#         background_image = None
#         cursor_color = "#002b36"
#         foreground_color = "#657b83"
# [layouts]
#     [[default]]
#         [[[child1]]]
#             type = Terminal
#             parent = window0
#             profile = default
#         [[[window0]]]
#             type = Window
#             parent = ""
# [plugins]

curl https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark > ~/.dircolors
sudo gedit ~/.bashrc
## write these to the file
# # enable color support of ls and also add handy aliases
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#     alias ls='ls --color=auto'
#     #alias dir='dir --color=auto'
#     #alias vdir='vdir --color=auto'

#     alias grep='grep --color=auto'
#     alias fgrep='fgrep --color=auto'
#     alias egrep='egrep --color=auto'
# fi

# # some more ls aliases
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
source ~/.bashrc