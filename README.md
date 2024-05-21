# mre-nested-lightning-email-templates

> Minimal reproduction example to demonstrate issues with nested Lighting Email Templates and Folders

[![Actions Status](https://github.com/mdapi-issues/mre-nested-lightning-email-templates/actions/workflows/default.yml/badge.svg?branch=main)](https://github.com/mdapi-issues/mre-nested-lightning-email-templates/actions?query=branch:main)

> [!IMPORTANT]
> A green status badge means the issue was successfully reproduced.
>
> A red status badge means the issue was fixed or the pipeline failed for another reason.

## Instructions

Create a Scratch Org and deploy the sample metadata:

```console
./scripts/develop.sh
```

Run the different tests:

```console
./test/retrieve-using-source-tracking.sh
./test/deploy-using-metadata-api-names.sh
```
