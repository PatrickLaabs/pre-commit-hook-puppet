#!/bin/sh

PASS=true
    puppet-lint --only-checks trailing_whitespace /modules 
    if [ "$?" -eq 1 ]; then
        PASS=false
    fi

if [ "$PASS" = "false" ]; then
    exit 1
fi