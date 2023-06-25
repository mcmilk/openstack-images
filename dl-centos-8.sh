#!/bin/sh

# /TR 2023-06-25

# https://cloud.centos.org/centos/8-stream/x86_64/images/CentOS-Stream-GenericCloud-8-latest.x86_64.qcow2
for arch in aarch64 x86_64 ppc64le; do
  wget https://cloud.centos.org/centos/8-stream/$arch/images/CentOS-Stream-GenericCloud-8-latest.$arch.qcow2
  qemu-img convert CentOS-Stream-GenericCloud-8-latest.$arch.qcow2 centos-8-$arch.raw
  rm -f CentOS-Stream-GenericCloud-8-latest.$arch.qcow2
done
