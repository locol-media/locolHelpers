Locol Automation Helper Scripts
============

These are scripts to support the locol application in various environments.

These are scripts to:
* Start the display
* Stop the display
* Helper scripts for the mobile app to manage the display


automaticHelper.sh
---
This script hangs onto the locol app web socket and wait for commands from the mobile app.

execCmd.sh
---
This script executes the right script based on the command from the mobile app.

restartBrowser.sh stopBrowser.sh
---
These scripts starts and stops the display. These scripts can be manually executed or by execCmd.sh

playVideo.sh
---
This script runs a video using the native video mode on the Raspberry Pi.

bootstrap.sh
---
This script initializes the app to set up a location.