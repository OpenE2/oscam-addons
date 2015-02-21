#!/bin/sh
#
# Manual script for download picons from svn
#
# This script will be it tested on:
#	Vu+ Solo .....
#
# NOTES: 	- Dont use \n for new line. \n dont works on enigma 2
#			- Set manually:
#				1. way to download the file in USER SETUP

# USER SETUP ###############################################
# Set manually downloaded file without trailing "/"
TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-picons/skyndas/0D96_0624"
ChannelIndex='channel_index.txt'

# Set TEMP folder
TempFolder="/tmp"

# END USER SETUP ###########################################

# FUNCTIONS ************************************************
die() {
	msg=$1
	[ -z "$msg" ] && msg="Unknown Error!"
	echo "$msg"
	exit 1
}

# UPDATE ***************************************************
# Detecting operating system and CPU type
MachineHardwareName=$(uname -m)

# Print to display
echo ""
echo "Preparation before downloading the file"
echo "---------------------------------------"

# Go to TEMP folder
cd $TempFolder

# Remove the previous downloaded file
[ -f "$ChannelIndex" ] && rm -f "$ChannelIndex"

# Download new files
wget -q $TrunkUrl/$ChannelIndex

# Print to display
echo ""
echo "START SCRIPT TO DOWNLOAD THE FILE"
echo "---------------------------------"
echo ""
echo "Machine hardware name: "$MachineHardwareName

for i in `cat channel_index.txt`; do wget "${TrunkUrl}/${i}"; done


# Done all OK
exit 0