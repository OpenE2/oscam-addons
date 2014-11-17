#!/bin/sh
TempFolder="/var/volatile/tmp"
OscamTplFolder=$(grep -r httptpl /etc/tuxbox/config/oscam.conf | cut -d= -f2 | xargs)
TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files/Envi_Template.tgz"
cd $TempFolder
[ -f Envi_Template.tgz ] && rm -f Envi_Template.tgz
wget -q $TrunkUrl
[ -f Envi_Template.tgz ] && mv -f Envi_Template.tgz $OscamTplFolder
cd $OscamTplFolder
[ -f CSS.tpl ] && rm -f CSS.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl
tar -xzvf Envi_Template.tgz
rm -if Envi_Template.tgz || exit 1
#done all OK
exit 0