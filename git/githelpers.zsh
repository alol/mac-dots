# .githelpers
# vim:syntax=sh

#
# git functions
#

# Log output:
#
# * 51c333e    (12 days)    <Gary Bernhardt>   add vim-eunuch
#
# The time massaging regexes start with ^[^<]* because that ensures that they
# only operate before the first "<". That "<" will be the beginning of the
# author name, ensuring that we don't destroy anything in the commit message
# that looks like time.
#
# The log format uses } characters between each field, and `column` is later
# used to split on them. A } in the commit subject or any other field will
# break this.

HASH="%C(yellow)%h%Creset"
RELATIVE_TIME="%Cgreen%ar%Creset"
DATE="%Cgreen%ad%Creset"
AUTHOR="%C(bold blue)%an%Creset"
REFS="%C(red)%d%Creset"
SUBJECT="%s"

FORMAT="$HASH}$RELATIVE_TIME}$AUTHOR}$REFS $SUBJECT"

_git_log_format_pretty() {
    git log --graph --pretty="tformat:${FORMAT}" $* |
        # Replace (2 years ago) with (2 years)
        sed -Ee 's/(^[^<]*) ago)/\1)/' |
        # Replace (2 years, 5 months) with (2 years)
        sed -Ee 's/(^[^<]*), [[:digit:]]+ .*months?)/\1)/' |
        # Line columns up based on } delimiter
        column -s '}' -t |
        # Page only if we need to
        less -FXRS
}

DEPLOYMENT_FORMAT="$DATE}$AUTHOR}$SUBJECT}$HASH}"

_git_log_format_deploy() {
    git log --graph --date=short --pretty="tformat:${DEPLOYMENT_FORMAT}" $* |
        # Replace (2 years ago) with (2 years)
        sed -Ee 's/(^[^<]*) ago)/\1)/' |
        # Replace (2 years, 5 months) with (2 years)
        sed -Ee 's/(^[^<]*), [[:digit:]]+ .*months?)/\1)/' |
        # Line columns up based on } delimiter
        column -s '}' -t |
        # Page only if we need to
        less -FXRS
}
