# android-autodeploy
Install an application to an Android device by just plugging it into your computer. This is useful when you face the task of installing an application on a lot of devices (50+) and other options are not available for some reason.

## Requirements
* Linux. Tested with Debian and Ubuntu.
* The Android phone that the app is supposed to be installed on needs to be in debug mode. Tested with Android 2.X.
* USB debugging allowed.
* Android ADB

## Setup
There are two ways to run android-autodeploy: with UI and without. With UI you will see the status of the deployment in a browser, without UI you can track progress in a log file.

### Without UI
1. Copy the files from the CLI folder to a location on your computer.
2. Create an udev rule in `/etc/udev/rules.d` or `/lib/udev/rules.d/` so your device is recognized. The suggested file name is `51-android.rules`. You can find the approriate vendor ID for your device on [this site](http://developer.android.com/guide/developing/device.html#VendorIds).
```bash
SUBSYSTEM=="usb", ATTR{idVendor}=="0bb4", MODE="0666", GROUP="plugdev"
```
3. To enable automatic deployment add the udev rule `99-autodeploy.rules` in the same directory. Point the path for RUN to your `deploy.sh` file.
```bash
SUBSYSTEM=="usb", ATTR{idVendor}=="0bb4", RUN+="/path/to/deploy.sh"
```
4. Adapt the paths in `deploy.sh` so they point to your APK file and the desired log file.
5. You are ready to go. Youc an call `deploy.sh` manually if you skipped step 3, otherwise it is called automatically once you have plugged in a phone.
