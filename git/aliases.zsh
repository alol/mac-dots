# .aliases
# vim:syntax=sh

alias g="git"

# branches
alias develop_branch="git co develop"
alias master_branch="git co master"
alias stable_branch="git co stable"

# rebase
alias rebase_master="git pull --rebase origin master"
alias rebase_stable="git pull --rebase origin stable"

# tools
alias gk="gitk"
alias gx="gitx"

# logs - using functions defined in githelpers.zsh
alias gld="_git_log_format_deploy -20"
alias glp="_git_log_format_pretty -20"

alias gaa="git add ."
alias gam='git commit --amend'
alias gl='git pull --prune'
alias gp='git push origin HEAD'
alias gd='git diff'
alias gdt='git difftool'
alias gc='git commit'
alias gca="git commit -a"
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gsh='git stash'
