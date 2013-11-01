# .functions
# vim:syntax=sh

###################
# Rails functions #
###################

# Upgrade empty all log files
function erl {
  for i in `ls log/*.log`; do cat /dev/null > $i; done
}

# Change between 2 RVM gemsets
function swap_gemset {
	if [ -f .rvmrc ] && [ -f .rvmrc.swap ] ; then
		mv .rvmrc .rvmrc.temp
		mv .rvmrc.swap .rvmrc
		mv .rvmrc.temp .rvmrc.swap
		cd .. && cd -
	else
		echo "Uh-oh! You don't seem to have a '.rvmrc.swap' file."
	fi
}

