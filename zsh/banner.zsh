# .banner
# vim:syntax=sh

function _print_macdots_banner {
  local hide_banner=$HIDE_MACDOTS_BANNER
  if [ "$hide_banner" != 'true' ] ; then
    echo
    printf '\033[0;32m%s\033[0m\n' '                              |       |        '
    printf '\033[0;32m%s\033[0m\n' ' __ `__ \   _` |  __|      _` |  _ \  __|  __| '
    printf '\033[0;32m%s\033[0m\n' ' |   |   | (   | ( _____| (   | (   | |  \__ \ '
    printf '\033[0;32m%s\033[0m\n' '_|  _|  _|\__,_|\___|    \__,_|\___/ \__|____/ '
    echo
  fi
  unset HIDE_MACDOTS_BANNER;
}
