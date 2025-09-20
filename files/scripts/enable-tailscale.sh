#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Enable and start the Tailscale service
systemctl enable tailscaled.service

# Note: We don't automatically run 'tailscale up' as this requires user authentication
# Users will need to run 'tailscale up' after first boot to connect to their tailnet
echo 'Tailscale service enabled. Run "tailscale up" after first boot to connect.'