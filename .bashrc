#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source aliases specific to a local machine
. aliases

complete -cf sudo                           #For tab-completion after 'sudo'
complete -cf man
complete -cf which

alias ls='ls --color=auto -hF'
alias la='ls -a'
alias ld='ls -ld'
alias ll='ls -l'
alias lal='ls -al'
alias ..='cd ..' 
alias ...='cd ../..' 
alias c='clear'
alias d='cd ~/Downloads'

# Editors
alias v='vim'

# Programs
alias wlanconky='~/.conky/NightDrive/start_conky.sh'
alias pacf='pacaur -Ss'
alias plex='sudo systemctl start plexmediaserver'
alias plexs='sudo systemctl stop plexmediaserver'
alias pacq='pacman -Q'
alias pacr='sudo pacman -Rns'
alias pacs='pacaur -S'
alias psyu='pacaur -Syu'
alias task='xfce4-taskmanager'
alias widgetfactory='pytwf'                 #Sample the current GTK theme
alias wine32='WINEARCH=win32 WINEPREFIX=/home/egon/.wine32'

# Configs
alias brc='vim ~/.bashrc'
alias crc='vim ~/.conkyrc'
alias vrc='vim /home/egon/.vimrc'
alias xmerge='xrdb -merge /home/egon/.Xresources'
alias xres='vim /home/egon/.Xresources'

# todo.sh
alias todo='todo.sh add'                    #A very handy todo.txt manager,
alias todone='todo.sh do'                   #  I use it wth conky to display
alias topri='todo.sh pri'                   #  a prioritized todo.txt on the
alias tododepri='todo.sh dp'                #  desktop.

# ssh and the like
alias feral='ssh jesuisnerd@asteria.feralhosting.com'
alias ssh='TERM=xterm ssh'
alias manjaro='ssh egon@192.168.1.149'
alias techssh='ssh tjadam@wopr.csl.mtu.edu'

# Misc. Functions
alias cacheclean='sudo pacman -Sc'          #Clean pacman cache
alias chx='chmod +x'                        #Enable execution of a file
alias flacdown='/home/egon/scripts/better.sh'   #Downconvert flac files
alias flactov0='/home/egon/scripts/better-v0.sh'
alias flacto320='/home/egon/scripts/better-320.sh'
alias join='lxsplit -j'                     #Join split files
alias kc='killall conky'                    #Kill desktop monitor
alias pipey='pipes -size 900'               #Fun terminal screensaver
alias removedupes='geeqie'                  #Program that scans folders for duplicate images
alias sorry='sudo $(history -p !-1)'        #Run last command with sudo
alias sudo='sudo '                          #So sudo will recognize aliases
alias thumb='mogrify -path ~/thumbs -resize 10%'   #create thumbnail of image
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'  #Get global IP addr

function box () {                           #Copy directory to feralhosting box
    scp -r "$@" jesuisnerd@asteria.feralhosting.com:~/private/rtorrent/watch/
}

function mcd () {                           #Create and enter a directory
    mkdir "$@"
    cd "$@"
}

function cdl () {                           #Enter directory & list contents
    cd "$@"
    ls
}

export BLOCKSIZE=human-readable
export QT_STYLE_OVERRIDE=GTK+
complete -cf sudo
complete -cf man
