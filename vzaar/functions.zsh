# .functions
# vim:syntax=sh

#####################
# vzaar functions #
#####################

function rcallback() {
  if [ -n $RCALLBACK_URL ]
  then
    curl $RCALLBACK_URL -d "
      <?xml version='1.0' encoding='UTF-8'?>
      <new_account_notification>
        <account>
          <account_code>$1</account_code>
          <username nil='true'></username>
          <email>johndoe@example.com</email>
          <first_name>John</first_name>
          <last_name>Doe</last_name>
          <company_name nil='true'></company_name>
        </account>
      </new_account_notification>" &>/dev/null
  else
    echo "Cannot perform callback: RCALLBACK_URL is not defined"
  fi
}

function scallback() {
  if [ -n $RCALLBACK_URL ]
  then
    curl "$SCALLBACK_URL$1" -d '' &>/dev/null
  else
    echo "Cannot perform callback: SCALLBACK_URL is not defined"
  fi
}
