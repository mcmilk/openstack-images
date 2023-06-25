#!/bin/bash

. upload.conf
# /TR 2023-06-25

export OS_AUTH_URL="$OS_AUTH_AMD64"
export OS_TENANT_ID="$OS_TENANT_AMD64"
upload_amd64 amd64-fedora-36 Fedora-Cloud-Base-36-1.5.x86_64.raw
upload_amd64 amd64-fedora-37 Fedora-Cloud-Base-37-1.7.x86_64.raw
upload_amd64 amd64-fedora-38 Fedora-Cloud-Base-38-1.6.x86_64.raw

export OS_AUTH_URL="$OS_AUTH_ARM64"
export OS_TENANT_ID="$OS_TENANT_ARM64"
upload_arm64 arm64-fedora-36 Fedora-Cloud-Base-36-1.5.aarch64.raw
upload_arm64 arm64-fedora-37 Fedora-Cloud-Base-37-1.7.aarch64.raw
upload_arm64 arm64-fedora-38 Fedora-Cloud-Base-38-1.6.aarch64.raw

export OS_AUTH_URL="$OS_AUTH_PPC64"
export OS_TENANT_ID="$OS_TENANT_PPC64"
upload_ppc64le ppc64le-fedora-36 Fedora-Cloud-Base-36-1.5.ppc64le.raw
upload_ppc64le ppc64le-fedora-37 Fedora-Cloud-Base-37-1.7.ppc64le.raw
upload_ppc64le ppc64le-fedora-38 Fedora-Cloud-Base-38-1.6.ppc64le.raw
