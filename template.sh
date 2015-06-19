#!/usr/bin/env bash

# $1 = template filename
template() {
  CATTED="$(cat $1)"
  ESCED=${CATTED//$'\n'/\\\\n}
  templateStr "$ESCED"
}

# $1 = template string
templateStr() {
  EVALED=$(eval echo -e "$1")
  echo "$EVALED"
}

if [[ $BASH_SOURCE[0] != $0 ]]; then
  export -f template
else
  template "${@}"
  exit $?
fi

