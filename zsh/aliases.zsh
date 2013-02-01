# .aliases
# vim:syntax=sh

# Reload bash aliases
alias reload='exec zsh -l'

# cd
alias ..='cd ..'
alias ...='cd ../..'
alias -- -="cd -"
alias st2='cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User'

# Quick config updates
alias hosts="subl /etc/hosts"
alias macdots="subl ~/.mac-dots"
alias nginxconf="subl /usr/local/etc/nginx"
alias ohmyzsh="subl ~/.oh-my-zsh"

# ls
alias ll="ls -l"
alias llt="ls -lrt"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# ssh
alias ssh_sam="ssh deployer@sam"
alias ssh_zyxel="ssh root@zyxel -p22"

# Disk space and memory
alias free="free -m"
alias left="df -h"

# System helpers
alias hgrep="history | grep \$1"
alias psef="ps -ef | grep \$1"
alias cls="clear"
alias pls="sudo" # haha!
