#!/bin/sh
cd /var/volatile/tmp
[ -f *.css ] && rm *.css
wget -q http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files/Envi_Template.tgz
[ -f Envi_Template.tgz ] && mv -f Envi_Template.tgz /etc/tuxbox/config/tpl/envi/Envi_Template.tgz
cd /etc/tuxbox/config/tpl/envi
[ -f CACHEEXPAGE.tpl ] && rm -f CACHEEXPAGE.tpl
[ -f CONFIGMENU.tpl ] && rm -f CONFIGMENU.tpl
[ -f FAILBAN.tpl ] && rm -f FAILBAN.tpl
[ -f FILEEDITCSS.tpl ] && rm -f FILEEDITCSS.tpl
[ -f FILEMENU.tpl ] && rm -f FILEMENU.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl
[ -f LOGPAGE.tpl ] && rm -f LOGPAGE.tpl
[ -f MENU.tpl ] && rm -f MENU.tpl
[ -f READERCONFIG.tpl ] && rm -f READERCONFIG.tpl
[ -f READERCONFIGIRDETO.tpl ] && rm -f READERCONFIGIRDETO.tpl
[ -f READERS.tpl ] && rm -f READERS.tpl
[ -f SCANUSB.tpl ] && rm -f SCANUSB.tpl
[ -f SCRIPT.tpl ] && rm -f SCRIPT.tpl
[ -f SERVICECONFIGLIST.tpl ] && rm -f SERVICECONFIGLIST.tpl
[ -f STATUS.tpl ] && rm -f STATUS.tpl
[ -f USERCONFIGLIST.tpl ] && rm -f USERCONFIGLIST.tpl
[ -f USEREDIT.tpl ] && rm -f USEREDIT.tpl
tar -xzvf Envi_Template.tgz
mv -f Envi_Template.css site.css
rm -if Envi_Template.tgz || exit 1
#done all OK
exit 0