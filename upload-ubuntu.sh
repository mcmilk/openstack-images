#!/bin/bash

. upload.conf
# /TR 2023-06-25

export OS_AUTH_URL="$OS_AUTH_AMD64"
export OS_TENANT_ID="$OS_TENANT_AMD64"
upload amd64-ubuntu-22 jammy-server-cloudimg-amd64.raw

export OS_AUTH_URL="$OS_AUTH_ARM64"
export OS_TENANT_ID="$OS_TENANT_ARM64"
upload arm64-ubuntu-22 jammy-server-cloudimg-arm64.raw

export OS_AUTH_URL="$OS_AUTH_PPC64"
export OS_TENANT_ID="$OS_TENANT_PPC64"
upload ppc64le-ubuntu-22 jammy-server-cloudimg-ppc64el.raw
