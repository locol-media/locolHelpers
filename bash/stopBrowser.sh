#!/bin/bash


stopBrowser() {
   pkill chromium-browse
   echo "Stopped chromium-browser"
}

stopBrowser &