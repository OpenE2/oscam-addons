#!/bin/sh
#
# Manual script with the use temporary directory
#
# NOTES: 	- Dont use \n for new line. \n dont works on enigma 2
#			- Set manually:
#				1. PATH to config files of Oscam
#				2. way to download the file in USER SETUP

# USER SETUP ###############################################
# Set manually PATH to config files without trailing "/"
ConfigPath="/etc/tuxbox/config"

# Set manually downloaded file without trailing "/"
TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files"
TrunkFile='Envi_Template.zip'

# Set TEMP folder without trailing "/"
TempFolder="/tmp"

# END USER SETUP ###########################################

# FUNCTIONS ************************************************
die() {
	msg=$1
	[ -z "$msg" ] && msg="Unknown Error!"
	echo "$msg"
	exit 1
}

case "$1" in
	# unknown or empty parameter or parameter 'h' = show help *****************
	'h')
		echo ''
		echo 'Manual script with the use temporary directory for downloaded Envi Template from SVN.'
		echo ''
		echo 'For ensure correct operation the script You must be set paths manually in the script.'
		echo ''
		echo 'ConfigPath="/path/to/oscam/config"'
		echo 'TrunkUrl="http://path/to/folder"'
		echo 'TrunkFile="downloaded file"'
		echo 'TempFolder=""'
		echo ''
		echo ''
		exit 0
	;;
	esac

# UPDATE ***************************************************
# Detecting operating system and CPU type
MachineHardwareName=$(uname -m)

# Validate ConfigPath
[ ! -d "$ConfigPath" ] && die "Directory ConfigPath \"$ConfigPath\" not found!"
# Validate TempFolder
[ ! -d "$TempFolder" ] && die "Directory TempFolder \"$TempFolder\" not found!"

# Find setting for oscam httptpl folder in file oscam.conf 
OscamTplFolder=$(grep -r httptpl $ConfigPath/oscam.conf | cut -d= -f2 | xargs)
# Validate OscamTplFolder
[ ! -d "$OscamTplFolder" ] && die "Directory OscamTplFolder \"$OscamTplFolder\" not found!"

# Print to display
echo ""
echo "START SCRIPT TO DOWNLOAD THE FILE"
echo "---------------------------------"
echo ""
echo "Machine hardware name: "$MachineHardwareName
echo "Temp folder: "$TempFolder
echo "Config path: "$ConfigPath
echo "Oscam template folder: "$OscamTplFolder

# Go to TEMP folder
cd $TempFolder

# Remove the previous downloaded file
[ -f "$TrunkFile" ] && rm -f "$TrunkFile"


# Download new files
url(){
	if [ ! -z "$1" ]; then
		wget -q --no-check-certificate "$1"
		[ "$?" -eq 0 ] && echo "Check Url: $1 exists..." || echo "Check Url: $1 doesn't exists.."
	else
		echo "No Arguments..exiting" & exit 1
	fi
}

url "$TrunkUrl/$TrunkFile"
# Validate downloaded file
[ ! -s "$TrunkFile" ] && die "Could not download file \"$TrunkFile\"!"

# Move the downloaded file to a oscam TPL folder
[ -f "$TrunkFile" ] && mv -f "$TrunkFile" "$OscamTplFolder"

# Go to TPL folder
cd $OscamTplFolder

# Remove the previous files
[ -f CSS.tpl ] && rm -f CSS.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl
[ -f JSCRIPT.tpl ] && rm -f JSCRIPT.tpl
[ -f info.txt ] && rm -f info.txt

# Print to display
echo ""
echo "Old template files have been deleted"
echo ""
echo "Decompressed files:"

#  Decompression
unzip "$TrunkFile"

# Print to display info about Envi
InfoRevision=$(grep -r Revision $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)
InfoAuthors=$(grep -r Authors $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)
InfoDate=$(grep -r Date $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)

echo ""
echo "INFO ABOUT ENVI"
echo "---------------"
echo "Envi Revision:     $InfoRevision"
echo "Authors:           $InfoAuthors"
echo "Last Changed Date: $InfoDate"

#  Remove a compressed file
rm -if "$TrunkFile" || die "Could not remove $TrunkFile!"

# Done all OK
exit 0