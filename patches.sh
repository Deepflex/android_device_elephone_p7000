#!/bin/bash

cd `dirname $0`
DSTDIR=$1

if [ -z "$DSTDIR" ]
then
    echo "Используйте: $0 <папка с исходниками>"
    exit 1
fi

red=$(tput setaf 1) # Red
grn=$(tput setaf 2) # Green
txtrst=$(tput sgr0) # Reset

if
echo "${grn}'frameworks_base.patch'${txtrst}"
cat patches/frameworks_base.patch | patch -d $DSTDIR/frameworks/base/ -p1 -N -r -
cp -R patches/res $DSTDIR/frameworks/base/packages/SystemUI
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_Settings.patch'${txtrst}"
cat patches/packages_apps_Settings.patch | patch -d $DSTDIR/packages/apps/Settings/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_CMFileManager.patch'${txtrst}"
cat patches/packages_apps_CMFileManager.patch | patch -d $DSTDIR/packages/apps/CMFileManager/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

if
echo "${grn}'packages_apps_CMUpdater.patch'${txtrst}"
cat patches/packages_apps_CMUpdater.patch | patch -d $DSTDIR/packages/apps/CMUpdater/ -p1 -N -r -
then
echo "${grn}Применён успешно!${txtrst}"
else
echo "${red}Не применён!${txtrst}"
fi

cd $DSTDIR

#git diff > x.patch
