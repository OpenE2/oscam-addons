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
#				3. TEMP folder

# USER SETUP ###############################################
# 1.
# Set manually PATH to config files without trailing "/"
#ConfigPath="/etc/tuxbox/config"
#ConfigPath="/usr/keys"
ConfigPath="/etc/tuxbox/config"
#
# 2.
# Set manually downloaded file without trailing "/"
# Insert basic folder for all picons
TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-picons/picons"
#
# 3.
# Set TEMP folder without trailing "/"
TempFolder='/tmp'
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
  r=$(grep "$1" "$OscamPiconsFolder/$InfoFile" | cut -d':' -f2 | xargs)
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
  echo 'The script support parameter.'
  echo 'Insert your CAID as parameter which you want to download'
  echo "$hr"
  echo 'Script with the use temporary directory for downloaded picons from SVN.'
  echo ''
  echo 'For ensure correct operation the script You must be set paths manually in the script.'
  echo ''
  echo 'ConfigPath="/path/to/oscam/config"'
  echo 'TrunkUrl="http://path/to/folder"'
	echo 'TempFolder="temporary folder"'
  echo ''
  exit 0
}

# PARAMETER ************************************************
# unknown parameter = show help (script has parameter)

setParam() {
  case "$1" in
    # Skylink CAID - 0D96, 0624
        0D96|0d96)
          TrunkCaid='0D96'
          TrunkFile='0D96.zip'
          InfoFile='info_0d96.txt'
        ;;
        *|h|help)
          printHelp
          exit 0
        ;;
  esac
}


for PARAM in $*; do
  setParam "$PARAM"
done


# UPDATE ***************************************************
# Detecting operating system and CPU type
MachineHardwareName=$(uname -m)

# Validate ConfigPath
[ ! -d "$ConfigPath" ] && die "Directory ConfigPath \"$ConfigPath\" not found!"
# Validate TempFolder
[ ! -d "$TempFolder" ] && die "Directory TempFolder \"$TempFolder\" not found!"

# Find setting for oscam httppiconpath folder in file oscam.conf 
OscamPiconsFolder=$(grep -r httppiconpath $ConfigPath/oscam.conf | cut -d= -f2 | xargs)
# Validate OscamPiconsFolder
[ ! -d "$OscamPiconsFolder" ] && die "Directory OscamPiconsFolder \"$OscamPiconsFolder\" not found!"

# Print to display
echo "Preparation before you start the update"
echo "$hr"
echo "Machine hardware name: "$MachineHardwareName
echo "Temp folder:           "$TempFolder
echo "Config path:           "$ConfigPath
echo "Oscam picons folder:   "$OscamPiconsFolder

# Go to TEMP folder
cd $TempFolder

# Remove the previous downloaded file
[ -f "$TrunkFile" ] && rm -f "$TrunkFile"

# Download new files
url "$TrunkUrl/$TrunkCaid/$TrunkFile"
# Validate downloaded file
[ ! -s "$TrunkFile" ] && die "  Could not download file \"$TrunkFile\"!"

# Move the downloaded file to a oscam PICONS folder
[ -f "$TrunkFile" ] && mv -f "$TrunkFile" "$OscamPiconsFolder"

# Go to PICONS folder
cd $OscamPiconsFolder

if [ -s "$InfoFile" ]; then
	# Print Info about PREVIOUS version of picons for CAID 0D96
	InfoRevision=$(parseInfoTxt "Revision")
	InfoAuthors=$(parseInfoTxt "Authors")
	InfoDate=$(parseInfoTxt "Date")

	# Print to display about the PREVIOUS version of picons for CAID 0D96
	echo ""
	echo "Current installed version of picons for CAID-0D96:"
	echo "$hr"
	echo "Revision:          $InfoRevision"
	echo "Authors:           $InfoAuthors"
	echo "Last Changed Date: $InfoDate"
	# Remove the previous files
		# Print to display
		echo ""
		echo "Deleting old (unused) files of picons for CAID-0D96"
		echo "$hr"
		# Read through the info_0d96.txt file and execute echo command for every filename
		for i in `cat $InfoFile | egrep -v '^#|^[[:space:]]*$'`; do
			echo 'removed: '$i; 
		done
		# Remove files from file list which is containt in info_0d96.txt
		cat $InfoFile | egrep -v '^#|^[[:space:]]*$' | xargs rm -fr
fi

#  Decompression, remove a compressed file and exit
echo ""
echo "Uncompressing downloaded zip file..."
echo "$hr"
unzip -o "$TrunkFile"
rm -if "$TrunkFile" || die "  Could not remove $TrunkFile!"

if [ -s $InfoFile ]; then
	# Print to display about the NEW installed version of picons for CAID 0D96
  InfoRevision=$(parseInfoTxt "Revision:")
  InfoAuthors=$(parseInfoTxt "Authors:")
  InfoDate=$(parseInfoTxt "Date:")
  InfoPicons=$(parseInfoTxt "Picons:")
  InfoUpdate=$(parseInfoTxt "Update:")

  echo ''
  echo 'Downloaded (new installed) version:'
  echo "$hr"
	echo "Revision:                      $InfoRevision"
	echo "Authors:                       $InfoAuthors"
	echo "Last Changed Date:             $InfoDate"
  echo "Number of Picons:              $InfoPicons"
  echo "Info About The Latest Update:  $InfoUpdate"
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