MODPATH=${0%/*}

# log
exec 2>$MODPATH/debug.log
set -x

# var
API=`getprop ro.build.version.sdk`

# wait
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 10
done

# list
PKGS="`cat $MODPATH/package.txt`
      com.google.android.googlequicksearchbox:search
      com.google.android.googlequicksearchbox:assistant
      com.google.android.googlequicksearchbox:playcore_dialog_wrapper_activity
      com.google.android.googlequicksearchbox:playcore_missing_splits_activity
      com.google.android.googlequicksearchbox:interactor
      com.google.android.googlequicksearchbox:wallpaper_chooser
      com.google.android.googlequicksearchbox:crash_report
      com.google.android.googlequicksearchbox:dev
      com.google.android.googlequicksearchbox:ui
      com.google.android.googlequicksearchbox:afw
      com.google.android.googlequicksearchbox:primes_lifeboat
      com.google.android.googlequicksearchbox:client_logging
      com.google.android.googlequicksearchbox:trusted_disable_art_image_
      com.google.android.googlequicksearchbox:trusted
      com.google.android.googlequicksearchbox:googleapp
      com.google.android.googlequicksearchbox:train
      com.google.android.googlequicksearchbox:ar_runtime_loader"
for PKG in $PKGS; do
  magisk --denylist rm $PKG 2>/dev/null
  magisk --sulist add $PKG 2>/dev/null
done
if magisk magiskhide sulist; then
  for PKG in $PKGS; do
    magisk magiskhide add $PKG
  done
else
  for PKG in $PKGS; do
    magisk magiskhide rm $PKG
  done
fi

# grant
PKG=com.google.android.googlequicksearchbox
if appops get $PKG > /dev/null 2>&1; then
  appops set $PKG LEGACY_STORAGE allow
  appops set $PKG WRITE_MEDIA_IMAGES allow
  appops set $PKG WRITE_MEDIA_VIDEO allow
  appops set $PKG MANAGE_ONGOING_CALLS allow
  appops set $PKG GET_USAGE_STATS allow
  if [ "$API" -ge 30 ]; then
    appops set $PKG MANAGE_EXTERNAL_STORAGE allow
    appops set $PKG NO_ISOLATED_STORAGE allow
  fi
  if [ "$API" -ge 33 ]; then
    appops set $PKG ACCESS_RESTRICTED_SETTINGS allow
  fi
  PKGOPS=`appops get $PKG`
  UID=`dumpsys package $PKG 2>/dev/null | grep -m 1 Id= | sed -e 's|    userId=||g' -e 's|    appId=||g'`
  if [ "$UID" ] && [ "$UID" -gt 9999 ]; then
    appops set --uid "$UID" LEGACY_STORAGE allow
    appops set --uid "$UID" SCHEDULE_EXACT_ALARM allow
    UIDOPS=`appops get --uid "$UID"`
  fi
fi






