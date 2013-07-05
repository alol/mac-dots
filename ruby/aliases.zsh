# .aliases
# vim:syntax=sh

# ruby
alias rebuild_ctags="ctags -R -f .tags"

# rails
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"
alias fs='foreman start'
alias ld="tail -f log/development.log"
alias lt="tail -f log/test.log"
alias lc="tail -f log/cucumber.log"
alias migrate='rake db:migrate && rake db:test:clone'
alias rc='rails c'
alias rs='rails s'
alias rst='touch tmp/restart.txt'
