#!/bin/sh
#
# Authors: Skyndas, schorsch100
#
# Manual script with the use temporary directory
#
# NOTES: 	- Dont use \n for new line. \n dont works on enigma 2
#			- Set manually:
#				1. PATH to config files of Oscam
#				2. PATH to download the file with picons - only basic folder
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

hr='******************************************************************************'

# FUNCTIONS ************************************************
die() {
	msg=$1
	[ -z "$msg" ] && msg="Unknown Error!"
	echo "$msg"
	exit 1
}

parseInfoLocalTxt() {
  r=$(grep "$1" "$OscamPiconsFolder/$InfoFile" | cut -d':' -f2 | xargs)
  [ -z "$r" ] && echo "UNKNOWN" || echo "$r"
}
parseInfoSvnTxt() {
  r=$(grep "$1" "$TempFolder/$InfoFile" | cut -d':' -f2 | xargs)
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
  echo 'THE SCRIPT SUPPORT PARAMETER.'
  echo "$hr"
  echo ''
  echo 'Insert your picons CAID as PARAMETER which you want to download'
  echo 'Allowed CAID as PARAMETER:'
  echo 'Skylink:  0D96, 0d96, 0624'
  echo 'Sky De:   098C, 098c'
  echo ''
  echo "$hr"
  echo 'Script with the use temporary directory for downloaded picons from SVN.'
  echo ''
  echo 'For ensure correct operation the script You must be set paths manually in the script.'
  echo ''
  echo '1. PATH to config files of Oscam'
  echo '    ConfigPath="/path/to/oscam/config"'
  echo '2. PATH to download the file with picons - only basic folder'
  echo '    TrunkUrl="http://path/to/basic_folder"'
  echo '3. TEMP folder'
	echo '    TempFolder="temporary folder"'
  echo ''
  exit 0
}

# PARAMETER ************************************************
# unknown or blank parameter = show help (script has parameter)
if [ -z "$1" ]; then
  printHelp 
  exit 1
fi

setParam() {
  case "$1" in
    # Skylink CAID - 0D96, 0624
        0D96|0d96)
          TrunkCaid='0D96'
          TrunkFile='0D96.zip'
          InfoFile='info_0D96.txt'
        ;;
    # Sky DE CAID - 098C
        098C|098c)
          TrunkCaid='098C'
          TrunkFile='098C.zip'
          InfoFile='info_098C.txt'
        ;;
        *|''|h|help)
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

# Revison comparision
unzip -p $TrunkFile $InfoFile > $InfoFile
if [ -s "$TempFolder/$InfoFile" ]; then
  InfoSvnRevision=$(parseInfoSvnTxt "Revision:")
fi

if [ -s "$OscamPiconsFolder/$InfoFile" ]; then
  InfoLocalRevision=$(parseInfoLocalTxt "Revision:")
fi

# Print Info about PREVIOUS version of picons
  echo ''
  echo 'Revison comparision'
  echo "$hr"
  echo "Number of revision in SVN:  $InfoSvnRevision"
  echo "Number of local revision:   $InfoLocalRevision"
  echo ''

if [ "$InfoSvnRevision" -eq "$InfoLocalRevision" ]; then
  rm -if "$TrunkFile" || die "  Could not remove $TrunkFile!"
  rm -if "$InfoFile" || die "  Could not remove $InfoFile!"
  echo ">>>>> PICONS in your local machine are CURRENT. Nothing to download. <<<<<"
  exit 0
fi

if [ "$InfoSvnRevision" -gt "$InfoLocalRevision" ]; then
  echo "Picons in your local machine are deprecated and will be updated."
fi

# Move the downloaded file to a oscam PICONS folder
[ -f "$TrunkFile" ] && mv -f "$TrunkFile" "$OscamPiconsFolder"

# Go to PICONS folder
cd $OscamPiconsFolder

if [ -s "$InfoFile" ]; then
	# Print Info about PREVIOUS version of picons
	InfoRevision=$(parseInfoLocalTxt "Revision")
	InfoAuthors=$(parseInfoLocalTxt "Authors")
	InfoDate=$(parseInfoLocalTxt "Date")

	# Print to display about the PREVIOUS version of picons
	echo ""
	echo "Current installed version of picons for CAID-$TrunkCaid:"
	echo "$hr"
	echo "Revision:          $InfoRevision"
	echo "Authors:           $InfoAuthors"
	echo "Last Changed Date: $InfoDate"
	# Remove the previous files
		# Print to display
		echo ""
		echo "Deleting old (unused) files of picons for CAID-$TrunkCaid:"
		echo "$hr"
		# Read through the info_0d96.txt file and execute echo command for every filename
		for i in `cat $InfoFile | egrep -v '^#|^[[:space:]]*$'`; do
			echo 'removed: '$i; 
		done
		# Remove files from file list which is containt in info file
		cat $InfoFile | egrep -v '^#|^[[:space:]]*$' | xargs rm -fr
fi

#  Decompression, remove a compressed file and exit
echo ""
echo "Uncompressing downloaded zip file..."
echo "$hr"
unzip -o "$TrunkFile"
rm -if "$TrunkFile" || die "  Could not remove $TrunkFile!"

if [ -s $InfoFile ]; then
	# Print to display about the NEW installed version of picons

  InfoRevision=$(parseInfoLocalTxt "Revision:")
  InfoAuthors=$(parseInfoLocalTxt "Authors:")
  InfoDate=$(parseInfoLocalTxt "Date:")
  InfoPicons=$(parseInfoLocalTxt "Picons:")
  InfoUpdate=$(parseInfoLocalTxt "Update:")

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
  ls -l $OscamTplFolder | grep -v '\IC_*.tpl$'
fi

# Done all OK
exit 0