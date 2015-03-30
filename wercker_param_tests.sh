#!/bin/sh

. ./wercker_param.sh

test_wercker_param() {
  export WERCKER_STEP_OWNER="OWNER"
  export WERCKER_STEP_NAME="STEPNAME"
  export OWNER_STEPNAME_PARAM="content of parameter"

  local expected="content of parameter"
  local actual=$(wercker_param "PARAM")

  assertEquals "$expected" "$actual"
}

test_wercker_param_name() {
  export WERCKER_STEP_OWNER="OWNER1"
  export WERCKER_STEP_NAME="STEPNAME1"

  local expected="OWNER1_STEPNAME1_PARAM"
  local actual=$(wercker_param_name "PARAM")

  assertEquals "$expected" "$actual"
}

# load shunit2
. ./vendor/shunit2/src/shunit2
