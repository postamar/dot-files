which hub &>/dev/null && alias git='nocorrect hub'

alias ll='ls -lah'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'
alias g='grep -i'  #case insensitive grep
alias h='history|g'
alias ducks='du -cks * | sort -rn |head -11' # Lists the size of all the folders

alias sprof="reload"
alias eprof="m $HOME/.config"

alias systail='tail -fn0 /var/log/system.log'
alias aptail='tail -fn0 /var/log/apache*/*log'
alias l='ls'
alias b='cd -'
alias cdr='cd ./$(git rev-parse --show-cdup)'

alias c='clear' # shortcut to clear your terminal

# useful command to find what you should be aliasing:
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'

alias pubkey="cat $HOME/.ssh/*.pub"
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors

alias jsonify='python -mjson.tool'
