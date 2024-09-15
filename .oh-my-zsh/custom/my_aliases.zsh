#===================
#*     Aliases
#===================

alias home='cd ~ && clear'
alias hi='~/.local/bin/zellij'
alias ls='lsd -lt --group-dirs=first --hyperlink=always'
alias lsa='lsd -alt --group-dirs=first --hyperlink=always'
alias lsr='lsd -ltR --group-dirs=first --hyperlink=always'
alias tree='lsd --tree --hyperlink=always'
alias bat='batcat'
alias cat='bat'
alias cls='clear'
alias fzf='fzf --preview="batcat --color=always {}"'
alias nanofzf='nano $(fzf)'
alias fd='fdfind'
alias src='source ~/.zshrc'
alias nano='sudo nano'
alias brewls='brew list'
alias brewi='brew install'
alias brews='brew search'
alias brewupdate='brew update && brew upgrade && brew cleanup'
alias brewrm='brew uninstall'
