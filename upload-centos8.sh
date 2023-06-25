#!/bin/bash

. upload.conf
# /TR 2023-06-25

export OS_AUTH_URL="$OS_AUTH_AMD64"
export OS_TENANT_ID="$OS_TENANT_AMD64"
upload amd64-centos-8 centos-8-x86_64.raw

export OS_AUTH_URL="$OS_AUTH_ARM64"
export OS_TENANT_ID="$OS_TENANT_ARM64"
upload arm64-centos-8 centos-8-aarch64.raw
exit

export OS_AUTH_URL="$OS_AUTH_PPC64"
export OS_TENANT_ID="$OS_TENANT_PPC64"
upload ppc64le-centos-8 centos-8-ppc64le.raw
