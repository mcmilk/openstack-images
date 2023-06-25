#!/bin/sh

# /TR 2023-06-25

for arch in aarch64 x86_64 ppc64le; do
  wget https://repo.almalinux.org/almalinux/8/cloud/$arch/images/AlmaLinux-8-GenericCloud-latest.$arch.qcow2
  qemu-img convert AlmaLinux-8-GenericCloud-latest.$arch.qcow2 AlmaLinux-8-$arch.raw
  rm -f AlmaLinux-8-GenericCloud-latest.$arch.qcow2

  wget https://repo.almalinux.org/almalinux/9/cloud/$arch/images/AlmaLinux-9-GenericCloud-latest.$arch.qcow2
  qemu-img convert AlmaLinux-9-GenericCloud-latest.$arch.qcow2 AlmaLinux-9-$arch.raw
  rm -f AlmaLinux-9-GenericCloud-latest.$arch.qcow2
done
