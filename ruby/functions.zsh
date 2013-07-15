# .functions
# vim:syntax=sh

#####################
# Rails functions #
#####################

# Upgrade empty all log files
function erl {
  for i in `l log/*.log`; do cat /dev/null > $i; done
}
