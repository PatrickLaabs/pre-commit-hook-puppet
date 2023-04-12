#!/bin/sh

PASS=true
    puppet-lint -f --only-checks trailing_whitespace .
    if [ "$?" -eq 1 ]; then
        PASS=false
    fi

if [ "$PASS" = "false" ]; then
    exit 1
fi