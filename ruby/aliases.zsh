# .aliases
# vim:syntax=sh

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
alias migrate='rake db:migrate && rake db:test:clone'
alias rst='touch tmp/restart.txt'

# RubyMine
alias remote-debug="rdebug-ide --port 1234 -- \$1"
alias rebuild_ctags="ctags -R -f .tags"
