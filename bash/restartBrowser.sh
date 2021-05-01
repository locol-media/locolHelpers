#!/bin/bash

# make sure we aren't running already
what=`basename $0`
for p in `ps h -o pid -C $what`; do
        if [ $p != $$ ]; then
                exit 0
        fi
done

startBrowser() {
   echo "Restarting chromium-browser"
   pkill chromium-browse
   sleep 3
   xset s off
   xset -dpms
   xset s noblank
   sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' ~/.config/chromium/'Local State'
   sed -i 's/"exited_cleanly":false/"exited_cleanly":true/; s/"exit_type":"[^"]\+"/"exit_type":"Normal"/' ~/.config/chromium/Default/Preferences
   DISPLAY=":0.0" chromium-browser --noerrdialogs --disable-infobars --kiosk http://localhost:30080/player/index.html#/play --incognito --disable-translate --disable-features=PreloadMediaEngagementData,AutoplayIgnoreWebAudio,MediaEngagementBypassAutoplayPolicies
   echo "Restarted chromium-browser"
}
echo "Starting chromium-browser" 
startBrowser &