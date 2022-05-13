#!/bin/bash

# vendor dependencies
go mod vendor

# make sure container is always up
tail -f /dev/null