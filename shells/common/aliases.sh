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

alias sum='paste -sd+ | bc'

alias epoch2date='perl -nle "if (/^\d+$/) {print \"gmtime:    \", scalar gmtime(\$); print \"localtime: \", scalar localtime(\$); } else {print \"ERR\"} "'
alias date2epoch='perl -MTime::Local -nle "if (/^(\d{4})(\d{2})(\d{2})(\d{2})?(\d{2})?(\d{2})?$/) { print \"timegm:    \", timegm(\$6, \$5, \$4, \$3, \$2-1, \$1-1900); print \"timelocal: \", timelocal(\$6, \$5, \$4, \$3, \$2-1, \$1-1900)} else {print \"ERR\"} "'
