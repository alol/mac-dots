# .functions
# vim:syntax=sh

###################
# vzaar functions #
###################

function vzcheck() {
  if [ -n "$S3_ACCESS_KEY_ID" ] ; then
    echo "Your vzaar environment is ready!"
  else
    echo "Your vzaar environment seems to be missing variables!"
  fi
}

function rcallback() {
  if [[ $# -eq 0 || $# -gt 2 ]] ; then
    echo "Invalid number or arguments. Usage: rcallback <account_id> [<notification_type>]"
    return
  fi
  local account_id=$1
  if [ -z "$2" ] ; then
    local notification_type="successful_payment"
  else
    local notification_type=$2
  fi
  if [ -n "$RCALLBACK_URL" ] ; then
    curl $RCALLBACK_URL -d "
      <?xml version='1.0' encoding='UTF-8'?>
      <${notification_type}_notification>
        <account>
          <account_code>$1</account_code>
          <username nil='true'></username>
          <email>johndoe@example.com</email>
          <first_name>John</first_name>
          <last_name>Doe</last_name>
          <company_name nil='true'></company_name>
        </account>
      </${notification_type}_notification>"
  else
    echo "Cannot perform callback: RCALLBACK_URL is not defined"
  fi
}

function scallback() {
  if [ ! $# -eq 1 ] ; then
    echo "Invalid number or arguments. Usage: scallback <account_id>"
    return
  fi
  if [ -n "$SCALLBACK_URL" ] ; then
    curl "$SCALLBACK_URL$1" -d '' &>/dev/null
  else
    echo "Cannot perform callback: SCALLBACK_URL is not defined"
  fi
}
