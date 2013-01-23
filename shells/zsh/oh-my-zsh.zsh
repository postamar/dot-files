ZSH="$SHELL_FILES/lib/oh-my-zsh"
ZSH_THEME="clean"

zstyle :omz:plugins:ssh-agent identities id_rsa

plugins=(git git-flow python screen ssh-agent virtualenvwrapper tmux)

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

 # git theming
PROMPT='%{$fg[$NCOLOR]%}%B%n%b%{$reset_color%}:%{$fg[blue]%}%B%c/%b%{$reset_color%} $(git_prompt_info)%(!.#.$) '
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg_no_bold[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX=" $(git_prompt_status)%b%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[red]%}⇡"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[red]%}⇣"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[red]%}⭠"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[red]%}➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[red]%}═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}✭"
