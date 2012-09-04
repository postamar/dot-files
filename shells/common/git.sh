alias gi='git init'
alias gdi='git diff'
alias gst='git status -s'
alias gl='git pull --rebase'
alias gp='git push'
alias gpa='git push-all' # see [alias] in ~/.gitconfig
alias ga='git add'
alias gcl='git config --list'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch --color'
alias gba='gb -a'
alias gco='git checkout'
alias gdc='git-svn dcommit'
alias gk='gitk --all &'
alias gx="open -b nl.frim.GitX"
alias grm="git stat | grep deleted | awk '{print $3}' | xargs git rm"
alias gpatch='git diff master -p'
alias glg="git log --decorate --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias ignore_empty='find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitignore \;'

function gd() {
  git diff $* | mvim -
}

if [[ -d "/usr/local/git" ]]; then
  PATH="/usr/local/git/bin:$PATH"
  MANPATH="/usr/local/git/man:$MANPATH"
fi
