#!/bin/sh

MOSH_PATH=$(readlink -f $(which mosh-server))

# Turn the firewall off
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate off

# Enable the firewall rules (make sure you are using your actual path)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --add $MOSH_PATH

# Unblock the app
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --unblockapp $MOSH_PATH

# Turn the firewall back on
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
