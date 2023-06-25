#!/bin/bash

. upload.conf
# /TR 2023-06-25

export OS_AUTH_URL="$OS_AUTH_AMD64"
export OS_TENANT_ID="$OS_TENANT_AMD64"
upload amd64-almalinux-8 AlmaLinux-8-x86_64.raw
upload amd64-almalinux-9 AlmaLinux-9-x86_64.raw

export OS_AUTH_URL="$OS_AUTH_ARM64"
export OS_TENANT_ID="$OS_TENANT_ARM64"
upload arm64-almalinux-8 AlmaLinux-8-aarch64.raw
upload arm64-almalinux-9 AlmaLinux-9-aarch64.raw

export OS_AUTH_URL="$OS_AUTH_PPC64"
export OS_TENANT_ID="$OS_TENANT_PPC64"
upload ppc64le-almalinux-8 AlmaLinux-8-ppc64le.raw
upload ppc64le-almalinux-9 AlmaLinux-9-ppc64le.raw
