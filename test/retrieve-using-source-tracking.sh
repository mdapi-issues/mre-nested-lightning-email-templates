#!/usr/bin/env bash

set -eo pipefail
set -x

rm -rf force-app/main
sf project delete tracking --no-prompt
sf project retrieve start
if diff -r fixtures force-app/main/default; then
    echo "--> issue could not be reproduced"
    exit 1
else
    echo "--> issue reproduced: retrieving using source tracking silently did not retrieve all previously deployed metadata"
fi
