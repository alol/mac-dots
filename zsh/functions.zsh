# .functions
# vim:syntax=sh

#####################
# Utility functions #
#####################

# Upgrade mac-dots
function upgrade_macdots {
  /usr/bin/env MACDOTSreload=$MACDOTS zsh $MACDOTS/bin/upgrade
}

# Log into a vzaar server
function vssh_login {
  ssh -i ~/.ssh/vzaar.pem vzaar@$1 ;
}

# Rebuild Finder "Open with..." menu
# http://osxdaily.com/2013/01/22/fix-open-with-menu-mac-os-x/
function rebuild_finder_menu {
  /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user; killall Finder; echo "Open With has been rebuilt, Finder will relaunch"
}

#################
# Git functions #
#################

# Rebase
function rebase_with {
  git pull --rebase origin $1 ;
}

# Deploy to staging from current branch
function deploy_to_staging {
  bundle exec cap staging deploy BRANCH=`current_branch` ;
}

# Push current branch to remote
function push_current_branch_to_remote {
  git push -u origin `current_branch`
}

# Delete current branch on origin
function delete_current_branch_from_remote {
  echo "Delete remote '`current_branch`' branch? (Y to confirm) \c"
  read line
  if [ "$line" = Y ]
  then
    git push origin :`current_branch`
  fi
}

# Re-create current branch on remote
function recreate_current_branch_on_remote {
  echo "Re-create remote '`current_branch`' branch? (Y to confirm) \c"
  read line
  if [ "$line" = Y ]
  then
    git push origin :`current_branch`
    push_current_branch_to_remote
  fi
}
