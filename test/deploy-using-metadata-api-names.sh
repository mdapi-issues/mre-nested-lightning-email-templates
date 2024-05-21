#!/usr/bin/env bash

set -eo pipefail
set -x

rm -rf force-app/main
sf project delete tracking --no-prompt
sf project retrieve start \
    --metadata EmailTemplateFolder:level1 \
    --metadata EmailTemplateFolder:level2 \
    --metadata EmailTemplateFolder:level3 \
    --metadata EmailTemplate:level1/template_level1_1714984698883 \
    --metadata EmailTemplate:level2/template_level2_1714984832364 \
    --metadata EmailTemplate:level3/template_level3_1715081809012
if diff -r fixtures force-app/main/default; then
    if sf project deploy start --metadata EmailTemplate:level3/template_level3_1715081809012; then
        echo "--> issue could not be reproduced"
    else
        echo "--> issue reproduced: deploying nested EmailTemplate by Metadata API name fails"
    fi
else
    echo "--> issue could not be reproduced"
    exit 1
fi