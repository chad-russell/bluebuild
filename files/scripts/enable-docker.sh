#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Enable and start the Docker service
systemctl enable docker.service

# Create docker group if it doesn't exist
groupadd -f docker

# Note: Users will need to add themselves to the docker group after first boot
# This can be done with: sudo usermod -aG docker $USER
# Then log out and back in for the changes to take effect
echo 'Docker service enabled. Add your user to the docker group with: sudo usermod -aG docker $USER'
echo 'Then log out and back in for the changes to take effect.'

