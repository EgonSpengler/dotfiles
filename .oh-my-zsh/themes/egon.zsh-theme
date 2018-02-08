# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: http://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

local returncode="[%(?.%F{yellow}✓.%F{red}%?)%f]"
ZSH_THEME_GIT_PROMPT_PREFIX="%f["
ZSH_THEME_GIT_PROMPT_SUFFIX="%f]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
#ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
#ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
#ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{<%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{>%G%}"
#ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"

PROMPT=$'%f┌─[%F{green}%n%f@%F{blue}%m%f][%F{red}%B%~%b%f][%F{yellow}%D{%a %b %d, %H:%M}%f]
└─╼ '
RPROMPT='$(git_super_status) ${returncode}'
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '
