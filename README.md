# Google App Magisk Module

## DISCLAIMER
- Google apps are owned by Google LLC
- The MIT license specified here is for the Magisk Module only, not for Google apps.

## Descriptions
- Quick search box and assistant app by Google LLC integrated as a Magisk Module for all supported and rooted devices with Magisk
- Enables Gemini in Google App if it's not available yet in your device
- Enables Hey Google & Voice Match in Google App if it's not available yet in your device
- WARNING!!! Hey Google & Voice Match consumes very high RAM. I don't recommend to activate Hey Google & Voice Match on devices with RAM lower than 3 GiB, otherwise you will get more lags and even freezing.
- Enables several other features in Google App
- Compatibility is not guaranteed

## Sources
https://apkmirror.com com.google.android.googlequicksearchbox by Google LLC

## Changelog

v0.9
- Update apk version 17.16.22 in Minimum SDK 30
- Fix CONTROL_DEVICE_LIGHTS & ACCESS_CONTEXT_HUB permission
- Activates com.google.android.feature.PIXEL_2026_EXPERIENCE, com.google.android.feature.GEMINI_EXPERIENCE, com.google.android.feature.GEMINI_POWER_MENU, com.google.android.feature.NEXT_GENERATION_ASSISTANT, com.google.lens.feature.CAMERA_INTEGRATION, and com.google.lens.feature.IMAGE_INTEGRATION
- Set install-in-user-type config

v0.8
- Update apk version 17.4.67
- Activates com.google.android.feature.AMBIENT_DATA and com.google.android.feature.CONTEXTUAL_SEARCH_LIVE_TRANSLATE
- Abort installation if fail to mount mirror system
- Fix magiskhide/zygisk list
- Fix permission

v0.7
- Add Action button to clear app caches
- Fix bug in uninstall.sh
- Fix selinux denials
- Fix extract libs
- Activates com.google.android.feature.PIXEL_2025_EXPERIENCE
- Update apk version

v0.6
- Fix permissions
- Activates com.android.systemui.SUPPORTS_DRAG_ASSISTANT_TO_SPLIT and com.google.android.feature.DSE_CHOICE_SCREEN

v0.5
- Fix call and SMS Assistant command (Remove com.google.android.feature.PIXEL_TABLET_2023_EXPERIENCE.xml)
- Update Google App version to 15.43.37

v0.4
- Android Emulator support

v0.3
- Fix xml bug

v0.2
- Add Google app
- Change module name

v0.1
- Initial release

## Screenshots
https://t.me/ryukinotes/23

## Requirements
- GApps installed
- Magisk or Kitsune Mask or KernelSU or Apatch installed

## Installation Guide & Download Link
- If you are using KernelSU, you need to disable Unmount Modules by Default in KernelSU app settings and install https://github.com/KernelSU-Modules-Repo/meta-overlayfs or https://github.com/KernelSU-Modules-Repo/magic_mount_rs or https://github.com/KernelSU-Modules-Repo/hybrid_mount first depending on ROM compatibility
- Download the right module according to your device architecture and Android version:
  • arm64-v8a Minimum SDK 30: https://devuploads.com/qr9k97drlh4s
  • arm64-v8a Minimum SDK 29: https://devuploads.com/z7zfhzmohiii
  • arm64-v8a + dummy armeabi-v7a Minimum SDK 30: https://devuploads.com/xb48iw4z6ocv
  • arm64-v8a + dummy armeabi-v7a Minimum SDK 28: https://devuploads.com/ygeile23vz7n
  • armeabi-v7a Minimum SDK 30: https://devuploads.com/9pb1v3l0whpq
  • armeabi-v7a Minimum SDK 28: https://devuploads.com/o5g694oxfqqq
  • x86_64 Minimum SDK 30: https://devuploads.com/ulg1pgm7lr8m
  • x86_64 Minimum SDK 28: https://devuploads.com/yo2aw648hs1i
  • x86 Minimum SDK 30: https://devuploads.com/4o1pasxih0w3
  • x86 Minimum SDK 28: https://devuploads.com/0c8gyjysl70q
- Install the module via Magisk app or Kitsune Mask app or KernelSU app or Apatch app or Recovery if Magisk or Kitsune Mask installed
- Reboot
- If you are using KernelSU, you need to allow superuser list manually all package name listed in package.txt (and your home launcher app also) (enable show system apps) and reboot afterwards
- For Android 16 & 17 (SDK 36 & 37), you can normal install com.google.android.googlequicksearchbox.nga_resources also: https://www.apkmirror.com/apk/google-inc/com-google-android-googlequicksearchbox-nga_resources/ if it's not available yet in your ROM to optimize the Assistant feature.

## Optionals
Global: https://t.me/ryukinotes/35

## Troubleshootings
- If Gemini does not appear while long pressing home/power button, then open Google App > tap top right corner > Settings > Gemini > Digital Assistant from Google > re-set Gemini
- Global: https://t.me/ryukinotes/34

## Support & Bug Report
- https://t.me/ryukinotes/54
- If you don't do above, issues will be closed immediately

## Credits and Contributors
- @HuskyDG
- https://t.me/androidryukimodsdiscussions
- You can contribute ideas about this Magisk Module here: https://t.me/androidappsportdevelopment

## Sponsors
https://t.me/ryukinotes/25


