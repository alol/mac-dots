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
alias please="sudo" # haha!

# git branches
alias develop_branch="git co develop"
alias master_branch="git co master"
alias stable_branch="git co stable"

# git helpers
alias gx="gitx"
alias rebase_master="git pull --rebase origin master"
alias rebase_stable="git pull --rebase origin stable"
alias gld="_git_log_format_deploy -20"
alias glp="_git_log_format_pretty -20"

# rails
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"
alias ld="tail -f log/development.log"
alias lt="tail -f log/test.log"
alias lc="tail -f log/cucumber.log"
alias lr="rm log/*.log"
alias migrate_all='rake db:migrate && rake db:migrate RAILS_ENV=test'
alias migrate_dev='rake db:migrate'
alias migrate_test='rake db:migrate RAILS_ENV=test'
alias rst='touch tmp/restart.txt'

# RubyMine
alias remote-debug="rdebug-ide --port 1234 -- \$1"
