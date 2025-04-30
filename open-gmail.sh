#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Gmail
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ✉️

# Documentation:
# @raycast.description Open Gmail in Chrome
# @raycast.author biafrajr
# @raycast.authorURL https://raycast.com/biafrajr

open -na "Google Chrome" --args --profile-directory="Profile 1" "https://mail.google.com"
