#!/bin/sh
cd /var/volatile/tmp
[ -f *.css ] && rm *.css
wget -q http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files/Envi_Template.tgz
[ -f Envi_Template.tgz ] && mv -f Envi_Template.tgz /etc/tuxbox/config/tpl/Envi_Template.tgz
cd /etc/tuxbox/config/tpl
[ -f MENU.tpl ] && rm -f MENU.tpl
[ -f HEADER.tpl ] && rm -f HEADER.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl
[ -f FILEMENU.tpl ] && rm -f FILEMENU.tpl
[ -f FILEEDITCSS.tpl ] && rm -f FILEEDITCSS.tpl
tar -xzvf Envi_Template.tgz
mv -f Envi_Template.css /etc/tuxbox/config/Envi_Template.css
rm -if Envi_Template.tgz || exit 1
#done all OK
exit 0
