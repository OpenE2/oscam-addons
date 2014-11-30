#!/bin/sh

############################################
# Set manually PATH to config files without trailing "/"

ConfigPath="/etc/tuxbox/config"

# Set manually downloaded file

TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files/Envi_Template.zip"

############################################

# Set TEMP folder
TempFolder="/tmp"

# Find setting for oscam httptpl folder in file oscam.conf 
OscamTplFolder=$(grep -r httptpl $ConfigPath/oscam.conf | cut -d= -f2 | xargs)

# Go to TEMP folder
cd $TempFolder

# Remove the previous downloaded file
[ -f Envi_Template.zip ] && rm -f Envi_Template.zip

# Download new files
wget -q $TrunkUrl

# Move the downloaded file to a oscam TPL folder
[ -f Envi_Template.zip ] && mv -f Envi_Template.zip $OscamTplFolder

# Go to TPL folder
cd $OscamTplFolder

# Remove the previous files
[ -f CSS.tpl ] && rm -f CSS.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl
[ -f info.txt ] && rm -f info.txt

#  Decompression, remove a compressed file and exit
unzip Envi_Template.zip
rm -if Envi_Template.zip || exit 1
#done all OK
exit 0