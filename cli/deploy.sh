#!/bin/bash

LOGFILE=.android-autodeploy.log
APK=/path/to/app.apk

echo "Deployment started" >> $LOGFILE
echo "Deploying APK" >> $LOGFILE
adb install -r $APK >> $LOGFILE
echo "Done" >> $LOGFILE
echo "-------------------" >> $LOGFILE