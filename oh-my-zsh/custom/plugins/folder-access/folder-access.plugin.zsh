#
# ~/
#
h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

#
# ~/Development
#
c() { cd ~/Development/$1; }
_c() { _files -W ~/Development -/; }
compdef _c c
