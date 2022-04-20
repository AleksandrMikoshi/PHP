#!/bin/sh
url="$4"
pkgfile="$5"
logfile="/Library/Logs/InstallScript.log"


/bin/echo "--" >> ${logfile}
/bin/echo "`date`: Downloading latest version." >> ${logfile}
curl -L $url > /tmp/${pkgfile}
/bin/echo "`date`: Installing..." >> ${logfile}
cd /tmp
/usr/sbin/installer -pkg $pkgfile -target /
/bin/sleep 5
/bin/echo "`date`: Deleting package installer." >> ${logfile}
/bin/rm /tmp/"${pkgfile}"

exit 0