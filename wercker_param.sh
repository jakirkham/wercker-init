#!/bin/sh +xe

wercker_param() {
  local param=${1:?"require a parameter as the first argument"}
  local envvarname=$(wercker_param_name "$param")

  eval printf "\"\$$envvarname\""
}

wercker_param_name() {
  local param=${1:?"require a parameter as the first argument"}

  echo "${WERCKER_STEP_OWNER}_${WERCKER_STEP_NAME}_${param}"
}
