which vim  &>/dev/null && export EDITOR="$(which vim)  -f"

export VISUAL="$EDITOR"
export GIT_EDITOR="$EDITOR"

export TERM=xterm-256color
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'
export CLICOLOR=1

export HISTSIZE=1000000

export REPORTTIME=2
export TIMEFMT="%*Es total, %U user, %S system, %P cpu"
