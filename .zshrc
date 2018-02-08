# If you come from bash you might have to change your $PATH.
export PATH=/opt/idea-IU-162.2228.15/bin:/opt/sublime_text:/opt/jd2:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/tyadam/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="egon"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa_egon"

export SYSTEMD_PAGER=
HISTCONTROL=ignoreboth

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
alias dnfs='sudo dnf install -y '
alias dnff='dnf search'
alias dnfr='sudo dnf erase'
alias pacf='pacaur -Ss'
alias pacq='pacman -Q'
alias pacr='sudo pacman -Rns'
alias pacs='pacaur -S'
alias plex='sudo systemctl start plexmediaserver'
alias plexs='sudo systemctl stop plexmediaserver'

# Configs
alias xmerge='xrdb -merge /home/tyadam/.Xresources'

# ssh and the like
alias ssh='TERM=xterm ssh'

# Misc. Functions
alias cacheclean='sudo pacman -Sc'          #Clean pacman cache
alias chx='chmod +x'                        #Enable execution of a file
alias join='lxsplit -j'                     #Join split files
alias pipey='pipes -f 50 -r 4000'           #Fun terminal screensaver
alias removedupes='geeqie'                  #Program that scans folders for duplicate images
alias sorry='sudo $(history -p !-1)'        #Run last command with sudo
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

# Prevent error when glob doesn't match
setopt +o nomatch
