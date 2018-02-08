#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

HISTCONTROL=ignoreboth                      #Ignore duplicates and preceding spaces

# Source aliases specific to a local machine
source ~/.git-prompt.sh
source ~/.aliases                           #Machine-specific aliases
for f in ~/bin/.bashrc*; do source $f; done

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
alias d='cd ~/Downloads'

# Editors
alias se='sudoedit'
alias v='vim'
alias :q='exit'

# Programs
alias dnfs='sudo dnf install -y'
alias dnff='dnf search'
alias dnfr='sudo dnf erase'
alias pacf='pacaur -Ss'
alias pacq='pacman -Q'
alias pacr='sudo pacman -Rns'
alias pacs='pacaur -S'
alias psyu='pacaur -Syu'
alias plex='sudo systemctl start plexmediaserver'
alias plexs='sudo systemctl stop plexmediaserver'

# Configs
alias xmerge='xrdb -merge /home/egon/.Xresources'

# todo.sh
alias todo='todo.sh add'                    #A very handy todo.txt manager,
alias todone='todo.sh do'                   #  I use it wth conky to display
alias topri='todo.sh pri'                   #  a prioritized todo.txt on the
alias tododepri='todo.sh dp'                #  desktop.

# ssh and the like
alias ssh='TERM=xterm ssh'

# Misc. Functions
alias cacheclean='sudo pacman -Sc'          #Clean pacman cache
alias chx='chmod +x'                        #Enable execution of a file
alias join='lxsplit -j'                     #Join split files
alias pipey='pipes -f 50 -r 4000'           #Fun terminal screensaver
alias removedupes='geeqie'                  #Program that scans folders for duplicate images
alias sorry='sudo $(history -p !-1)'        #Run last command with sudo
alias sudo='sudo '                          #So sudo will recognize aliases
alias thumb='mogrify -path ~/thumbs -resize 10%'   #create thumbnail of image
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'  #Get global IP addr

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

# show a happy hexagon mascot
#echo -e "    _____\n   /     \\ \n  /  O O  \\ \n  \\   ∪   /\n   \\_____/"