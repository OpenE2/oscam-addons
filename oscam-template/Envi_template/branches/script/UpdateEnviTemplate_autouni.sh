#!/bin/sh

#
# Automatic script for find folder and downloaded file
#
# This script will be it tested on:
#	Vu+ Solo, i686 (Xubuntu).....
#

############################################
# Set manually downloaded file

TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files/Envi_Template.tgz"

############################################

# Detecting operating system and CPU type
MachineHardwareName=$(uname -m)

# Find PATH with config files by CPU type
	if [ "$MachineHardwareName" = "mips" ]; then
	# Mips - Vu+ Solo, .... (write other type)
		ConfigPath=$(find /etc -name oscam.conf -type f |sed 's#\(.*\)/.*#\1#')

	elif [ "$MachineHardwareName" = "i686" ]; then
	# i686 - .... (write other type)
		ConfigPath=$(find /usr -name oscam.conf -type f |sed 's#\(.*\)/.*#\1#')

	elif [ "$MachineHardwareName" = "unknown" ]; then
	echo "unknown"
	:

	fi

# Find setting for oscam httptpl folder in file oscam.conf 
OscamTplFolder=$(grep -r httptpl $ConfigPath/oscam.conf | cut -d= -f2 | xargs)

# Go to TPL folder
cd $OscamTplFolder

# Remove the previous downloaded file
[ -f Envi_Template.tgz ] && rm -f Envi_Template.tgz

# Download new files
wget -q $TrunkUrl

# Remove the previous files
[ -f CSS.tpl ] && rm -f CSS.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl

# Print to display 
echo "START SCRIPT DO DOWNLOAD THE FILE"
echo "\nMachine hardware name:"$MachineHardwareName
echo "\nConfig Path:"$ConfigPath
echo "Oscam template folder:"$OscamTplFolder

file="$OscamTplFolder/Envi_Template.tgz"
if [ -f "$file" ]
then
	echo "Downloaded file: $file was successfully downloaded"
else
	echo "Downloaded file: $file was not downloaded!!!"
fi
echo "\n"
echo "Decompressed files:"

#  Decompression, remove a compressed file and exit
tar -xzvf Envi_Template.tgz
rm -if Envi_Template.tgz || exit 1
#done all OK
exit 0