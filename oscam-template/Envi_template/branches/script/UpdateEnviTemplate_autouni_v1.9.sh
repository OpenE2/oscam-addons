#!/bin/sh
#
# Author: Skyndas, schorsch100
#
# Automatic script for find folder and downloaded file.
# It works without the use of a temporary directory
#
# This script will be it tested on:
#	Vu+ Solo, i686 (Xubuntu), x86_64, raspberry pi (armv6l), .....
#
# NOTES: 	- Dont use \n for new line. \n dont works on enigma 2
#			- Set manually only way to download the file and temp folder in USER SETUP
#				1. PATH to download the file with Envi Template
#				2. Name of INFO file (list of files that contain Template)
#				3. TEMP folder

# USER SETUP ###############################################
# 1.
# Set manually downloaded file without trailing "/"
TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files"
TrunkFile='Envi_Template.zip'
#
# 2.
# Set manually INFO file (list of files that contain Template) without trailing "/"
InfoFile='info.txt'
#
# 3.
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
  echo '$0 HELP:'
  echo ''
  echo 'The script does not support parameter.'
  echo '$hr'
  echo 'Automatic Script for downloaded Envi Template from SVN.'
  echo ''
  echo 'This script automatic find folder with config files of OSCAM.'
  echo 'Is necessary to set only the path of the downloaded file into the script.'
  echo ''
  echo 'TrunkUrl="http://path/to/folder"'
  echo 'TrunkFile="downloaded file"'
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

# Find PATH with config files
	# Find file oscam.version which contains path with config files
	FindPath=$(find / -name "oscam.version" -print | xargs |sed -r 's/.{14}$//' )
	
		# Validate FindPath
		[ ! -d "$FindPath" ] && die "Directory FindPath \"$FindPath\" not found!"
	
	# Find path with config files
	ConfigPath=$(grep -r ConfigDir $FindPath/oscam.version | cut -d':' -f2 | xargs)
	ConfigPath=$(echo "$ConfigPath" |sed 's/.$//')

		# Validate ConfigPath
		[ ! -d "$ConfigPath" ] && die "Directory ConfigPath \"$ConfigPath\" not found!"

# Find setting for oscam httptpl folder in file oscam.conf 
OscamTplFolder=$(grep -r httptpl $ConfigPath/oscam.conf | cut -d= -f2 | xargs)

	# Validate OscamTplFolder
	[ ! -d "$OscamTplFolder" ] && die "Directory OscamTplFolder \"$OscamTplFolder\" not found!"

	# Correction if last character of OscamTplFolder is blank
	stringvar=$(echo $OscamTplFolder | tail -c 2)
	if [ $stringvar = "/" ]; then
		echo "Oscam template folder" $OscamTplFolder "is in the right format"
	else
		OscamTplFolder="$OscamTplFolder/"
		echo "Oscam template folder was corrected to the right format: "$OscamTplFolder
	fi

# Print to display
echo "Preparation before you start the update"
echo "$hr"
echo "Machine hardware name:    "$MachineHardwareName
echo "Path with oscam.version:  "$FindPath
echo "Folder with oscam.conf:   "$ConfigPath
echo "Temp folder:              "$TempFolder

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
	echo ''
	echo 'Current installed version:'
	echo '$hr'
	echo 'Envi Revision:     $InfoRevision'
	echo 'Authors:           $InfoAuthors'
	echo 'Last Changed Date: $InfoDate'
	# Remove the previous files
		# Print to display
		echo ''
		echo 'Deleting old (unused) files of Envi'
		echo '$hr'
		# Read through the info.txt file and execute echo command for every filename
		for i in `cat $InfoFile | egrep -v '^#|^[[:space:]]*$'`; do
			echo 'removed: '$i; 
		done
		# Remove files from file list which is containt in info.txt
		cat $InfoFile | egrep -v '^#|^[[:space:]]*$' | xargs rm -fr
fi

#  Decompression, remove a compressed file and exit
echo ''
echo 'Uncompressing downloaded zip file...'
echo '$hr'
unzip -o '$TrunkFile'
rm -if "$TrunkFile" || die "  Could not remove $TrunkFile!"

if [ -s $InfoFile ]; then
  # Print to display about the NEW installed version of Envi Template
  InfoRevision=$(parseInfoTxt "Revision:")
  InfoAuthors=$(parseInfoTxt "Authors:")
  InfoDate=$(parseInfoTxt "Date:")

  echo ''
  echo 'Downloaded (new installed) version:'
  echo '$hr'
  echo 'Envi Revision:     $InfoRevision'
  echo 'Authors:           $InfoAuthors'
  echo 'Last Changed Date: $InfoDate'
  echo ''
  echo 'Files:'
  echo '$hr'
  # Size without file IC_......tpl. These are files with picons.
  ls -l $OscamTplFolder | grep -v '\IC_.tpl$'

  echo ''
  echo '$hr'
  echo '>>>>>PLEASE REFRESH YOUR BROWSER<<<<<'
fi

# Done all OK
exit 0