#!/bin/sh
#
# Authors: Skyndas, schorsch100
#
# Manual script with the use temporary directory
#
# NOTES: 	- Dont use \n for new line. \n dont works on enigma 2
#			- Set manually:
#				1. PATH to config files of Oscam
#				2. PATH to download the file with Envi Template
#				3. Name of INFO file (list of files that contain Template)
#				4. TEMP folder

# USER SETUP ###############################################
# 1.
# Set manually PATH to config files without trailing "/"
#ConfigPath="/etc/tuxbox/config"
#ConfigPath="/usr/keys"
ConfigPath="/etc/tuxbox/config"
#
# 2.
# Set manually downloaded file without trailing "/"
TrunkUrl="http://subversion.assembla.com/svn/skyndas-webif-template/trunk"
TrunkFile='Envi_Template.zip'
#
# 3.
# Set manually INFO file (list of files that contain Template) without trailing "/"
InfoFile='info.txt'
#
# 4.
# Set TEMP folder without trailing "/"
TempFolder="/tmp"
#
# END USER SETUP ###########################################

hr='************************************************************'

# FUNCTIONS ************************************************
die() {
	msg=$1
	[ -z "$msg" ] && msg="Unknown Error!"
	echo "$msg"
	exit 1
}

parseInfoTxt() {
  r=$(grep "$1" "$OscamTplFolder/$InfoFile" | cut -d':' -f2 | xargs)
  [ -z "$r" ] && echo "UNKNOWN" || echo "$r"
}

url() {
  if [ ! -z "$1" ]; then
    echo ''
    echo 'Downloading...'
    echo "$hr"
    RESULT=`wget --no-check-certificate "$1" 2>&1`
    [ "$?" -eq 0 ] && echo "Check Url: OK!" || echo "Check Url: FAILED!"
    echo $RESULT
  else
    die 'Missing URL arguments... exiting!'
  fi
}

printHelp() {
  echo "$0 HELP:"
  echo ''
  echo 'The script does not support parameter.'
  echo "$hr"
  echo 'Manual script with the use temporary directory for downloaded Envi Template from SVN.'
  echo ''
  echo 'For ensure correct operation the script You must be set paths manually in the script.'
  echo ''
  echo 'ConfigPath="/path/to/oscam/config"'
  echo 'TrunkUrl="http://path/to/folder"'
  echo 'TrunkFile="downloaded template file"'
  echo 'InfoFile="info.txt"'
	echo 'TempFolder="temporary folder"'
  echo ''
  exit 0
}

# PARAMETER ************************************************
# unknown parameter = show help (script has no parameter yet)
[ ! -z "$1" ] && printHelp

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
echo "Preparation before you start the update"
echo "$hr"
echo "Machine hardware name: "$MachineHardwareName
echo "Temp folder:           "$TempFolder
echo "Config path:           "$ConfigPath
echo "Oscam template folder: "$OscamTplFolder

# Go to TEMP folder
cd $TempFolder

# Remove the previous downloaded file
[ -f "$TrunkFile" ] && rm -f "$TrunkFile"

# Download new files
url "$TrunkUrl/$TrunkFile"
# Validate downloaded file
[ ! -s "$TrunkFile" ] && die "  Could not download file \"$TrunkFile\"!"

# Move the downloaded file to a oscam TPL folder
[ -f "$TrunkFile" ] && mv -f "$TrunkFile" "$OscamTplFolder"

# Go to TPL folder
cd $OscamTplFolder

if [ -s "$InfoFile" ]; then
	# Print Info about PREVIOUS version of Envi Template
	InfoRevision=$(parseInfoTxt "Revision")
	InfoAuthors=$(parseInfoTxt "Authors")
	InfoDate=$(parseInfoTxt "Date")

	# Print to display about the PREVIOUS version of Envi Template
	echo ""
	echo "Current installed version:"
	echo "$hr"
	echo "Envi Revision:     $InfoRevision"
	echo "Authors:           $InfoAuthors"
	echo "Last Changed Date: $InfoDate"
	# Remove the previous files
		# Print to display
		echo ""
		echo "Deleting old (unused) files of Envi"
		echo "$hr"
		# Read through the info.txt file and execute echo command for every filename
		for i in `cat $InfoFile | egrep -v '^#|^[[:space:]]*$'`; do
			echo 'removed: '$i; 
		done
		# Remove files from file list which is containt in info.txt
		cat $InfoFile | egrep -v '^#|^[[:space:]]*$' | xargs rm -fr
fi

#  Decompression, remove a compressed file and exit
echo ""
echo "Uncompressing downloaded zip file..."
echo "$hr"
unzip -o "$TrunkFile"
rm -if "$TrunkFile" || die "  Could not remove $TrunkFile!"

if [ -s $InfoFile ]; then
	# Print to display about the NEW installed version of Envi Template
  InfoRevision=$(parseInfoTxt "Revision:")
  InfoAuthors=$(parseInfoTxt "Authors:")
  InfoDate=$(parseInfoTxt "Date:")

  echo ''
  echo 'Downloaded (new installed) version:'
  echo "$hr"
	echo "Envi Revision:     $InfoRevision"
	echo "Authors:           $InfoAuthors"
	echo "Last Changed Date: $InfoDate"
  echo ''
  echo "Files:"
  echo "$hr"
  # Size without file IC_......tpl. These are files with picons.
  ls -l $OscamTplFolder | grep -v '\IC_.tpl$'

  echo ''
  echo "$hr"
  echo '>>>>>PLEASE REFRESH YOUR BROWSER<<<<<'
fi

# Done all OK
exit 0