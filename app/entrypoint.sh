#!/bin/bash

BIN_PATH=/app/apiserver

if [[ $START_APP = true ]]; then
  # build server
  if [[ ! -f $BIN_PATH ]]; then
      make -C /var/graphql
      # move executable to app folder (to make sure build is run only when container is created)
      mv /var/graphql/build/apiserver $BIN_PATH
  fi

  # make sure config exists
  if [[ ! -f $CFG_PATH ]]; then
    cp /var/graphql/doc/example.config.json "$CFG_PATH"
  fi

  # start server
  $BIN_PATH --cfg "$CFG_PATH"
else
  # make sure container is always up
  tail -f /dev/null
fi
