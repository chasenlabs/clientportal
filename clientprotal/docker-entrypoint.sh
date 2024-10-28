#!/bin/bash

set -x

BIN_PATH=${CLIENT_PORTAL}/bin/run.sh

echo "IBKR Client Portal Start ${BIN_PATH}"

# Start the IBKR Client Portal
#  if $@ is not set, then use the default command
if [ -z "$@" ]; then
  bash -c "${BIN_PATH} root/conf.yaml"
else
  bash -c "${BIN_PATH} $@"
fi
