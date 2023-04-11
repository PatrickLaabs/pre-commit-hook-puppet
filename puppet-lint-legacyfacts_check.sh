#!/bin/sh

PASS=true
    puppet-lint --only-checks legacy_facts .
    if [ "$?" -eq 1 ]; then
        PASS=false
    fi

if [ "$PASS" = "false" ]; then
    exit 1
fi