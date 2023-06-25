#/bin/sh

# /TR 2023-06-25

for arch in amd64 arm64 ppc64el; do
  wget https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-$arch.img
  qemu-img convert jammy-server-cloudimg-$arch.img jammy-server-cloudimg-$arch.raw
  rm -f jammy-server-cloudimg-$arch.img
done
