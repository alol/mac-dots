# .aliases
# vim:syntax=sh

alias g="git"

# branches
alias develop_branch="git checkout develop"
alias master_branch="git checkout master"
alias stable_branch="git checkout stable"

# rebase
alias rebase_master="git pull --rebase origin master"
alias rebase_stable="git pull --rebase origin stable"

# tools
alias gk="gitk"
alias gx="gitx"
alias st="stree"

# logs - using functions defined in githelpers.zsh
alias glp="_git_log_format_pretty -20"

alias ga="git add ."
alias gac="git commit -am"
alias gad="git add ."
alias gb='git branch'
alias gc='git commit'
alias gcam='git commit --amend'
alias gco='git checkout'
alias gd='git diff'
alias gdt='git difftool'
alias gl='git pull --prune'
alias gmt='git mergetool'
alias gp='git push'
alias gpf='git push -f'
alias grc='git rebase --continue'
alias gri='git rebase -i'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gprune='git remote prune origin'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gsh='git stash'
