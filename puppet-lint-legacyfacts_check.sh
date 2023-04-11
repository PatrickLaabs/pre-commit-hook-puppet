#!/bin/sh

# Preqrequisites for this script:
if [ ! -f /usr/local/bin/puppet-lint ]; then
    gem install puppet-lint
fi

PASS=true
    puppet-lint --only-checks legacy_facts /modules 
    if [ "$?" -eq 1 ]; then
        PASS=false
    fi
done

if [ "$PASS" = "false" ]; then
    exit 1
fi