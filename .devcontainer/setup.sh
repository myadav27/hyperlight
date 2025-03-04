#!/bin/bash

# Change device ownership
sudo chown -R $REMOTE_USER:$REMOTE_GROUP $DEVICE

# Check for the KVM device and adjust permissions.
if [ -e /dev/kvm ]; then
    sudo chown root:kvm /dev/kvm
    sudo chmod 660 /dev/kvm
    sudo usermod -aG kvm vscode
else
    echo 'KVM device not found, skipping...'
fi