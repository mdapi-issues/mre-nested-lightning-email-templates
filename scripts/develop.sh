#!/usr/bin/env bash

set -eo pipefail
set -x

sf org create scratch -f config/project-scratch-def.json --alias mre-nested-lightning-email-templates --set-default
sf project deploy start --source-dir fixtures
