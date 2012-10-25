ZSH="$SHELL_FILES/lib/oh-my-zsh"
ZSH_THEME="cloud"

zstyle :omz:plugins:ssh-agent identities id_rsa

plugins=(git git-flow python screen ssh-agent virtualenvwrapper)

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh
