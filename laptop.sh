#!/bin/bash

# Raycast Script Command Template
#
# Duplicate this file and remove ".template." from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title laptop
# @raycast.mode silent
#
# Optional parameters:
# @raycast.icon 💻
# @raycast.packageName Raycast Scripts

#open -n "/System/Applications/Reminders.app"
#open -na "/Applications/Google Chrome.app" --args --new-window "https://league.okta.com"
#open -na "/Applications/Google Chrome.app" --args --new-window "https://calendar.google.com/calendar/u/0/r?pli=1"


rm -r /Users/jaylansiquot/.yabairc
cp /Users/jaylansiquot/.laptop_yabai.txt /Users/jaylansiquot/.yabairc
yabai --restart-service