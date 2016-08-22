#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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
alias c='clear'
alias d='cd ~/Downloads'

# Editors
alias se='sudoedit'
alias v='vim'

# git
alias gitlast='git show --name-only'

# Programs
alias pacf='pacaur -Ss'
alias pacq='pacman -Q'
alias pacr='sudo pacman -Rns'
alias pacs='pacaur -S'
alias psyu='pacaur -Syu'

# Configs
alias brc='vim ~/.bashrc'
alias vrc='vim /home/egon/.vimrc'
alias xmerge='xrdb -merge /home/egon/.Xresources'
alias xres='vim /home/egon/.Xresources'

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
complete -cf sudo
complete -cf man
