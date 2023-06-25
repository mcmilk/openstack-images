#!/bin/bash

. upload.conf
# /TR 2023-06-25

export OS_AUTH_URL="$OS_AUTH_AMD64"
export OS_TENANT_ID="$OS_TENANT_AMD64"
upload amd64-debian-11 debian-11-generic-amd64.raw
upload amd64-debian-12 debian-12-generic-amd64.raw

export OS_AUTH_URL="$OS_AUTH_ARM64"
export OS_TENANT_ID="$OS_TENANT_ARM64"
upload arm64-debian-11 debian-11-generic-arm64.raw
upload arm64-debian-12 debian-12-generic-arm64.raw

export OS_AUTH_URL="$OS_AUTH_PPC64"
export OS_TENANT_ID="$OS_TENANT_PPC64"
upload ppc64le-debian-11 debian-11-generic-ppc64el.raw
upload ppc64le-debian-12 debian-12-generic-ppc64el.raw
