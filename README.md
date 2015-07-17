# android-autodeploy
Install an application to an Android device by just plugging it into your computer. This is useful when you face the task of installing an application on a lot of devices (50+) and other options are not available for some reason.

## Requirements
* Linux. Tested with Debian and Ubuntu.
* Android. Tested with Android 2.X (I will test with newer devices though.)
* USB debugging allowed.

## Setup
1. Copy deploy.sh to your computer and adapt the path to your apk file.
2. Create an udev rule matching your Android device and link it to deploy.sh
3. Plug the phone into the computer via USB and the apk file is deployed automatically.
