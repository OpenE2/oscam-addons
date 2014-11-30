#!/bin/sh

#
# Automatic script for find folder and downloaded file
#
# This script will be it tested on:
#	Vu+ Solo, i686 (Xubuntu), x86_64, .....
#
# NOTES: Dont use \n for new line. \n dont works on enigma 2

############################################
# Set manually downloaded file

TrunkUrl="http://www.streamboard.tv/svn/oscam-addons/oscam-template/Envi_template/branches/compressed_files/Envi_Template.zip"

############################################

# Detecting operating system and CPU type
MachineHardwareName=$(uname -m)

# Find PATH with config files by CPU type
	if [ "$MachineHardwareName" = "mips" ]; then
	# Mips - Vu+ Solo, .... (write other type)
	# oscam.conf is still in folder /etc
		ConfigPath=$(find /etc -name oscam.conf -type f |sed 's#\(.*\)/.*#\1#')
	
	elif [ "$MachineHardwareName" = "i686" ]; then
	# i686 - .... (write other type)
		# Find file which contains word "global".File oscam.conf does not contain this word
		FindPath=$(find / -name "oscam.conf" -print | xargs grep "global")
		# Only echo
		echo "Found path with oscam.conf: "$FindPath
		# Only directory from whole path
		ConfigPath=$(echo "$FindPath" |sed -r 's/.{19}$//')
		# Only echo
		echo "Found folder with oscam.conf: "$ConfigPath

	elif [ "$MachineHardwareName" = "x86_64" ]; then
	# x86_64 - .... (write other type)
		# Find file which contains word "global".File oscam.conf does not contain this word
		FindPath=$(find / -name "oscam.conf" -print | xargs grep "global")
		# Only echo
		echo "Found path with oscam.conf: "$FindPath
		# Only directory from whole path
		ConfigPath=$(echo "$FindPath" |sed -r 's/.{19}$//')
		# Only echo
		echo "Found folder with oscam.conf: "$ConfigPath

	else
	# For other type
	# Works on CPU type: 	Mips - VU+ Solo		(write other type)

		# Find file which contains word "global".File oscam.conf does not contain this word
		FindPath=$(find / -name "oscam.conf" -print | xargs grep "global")
		# Only echo
		echo "Found path with oscam.conf: "$FindPath
		# Only directory from whole path
		ConfigPath=$(echo "$FindPath" |sed -r 's/.{19}$//')
		# Only echo
		echo "Found folder with oscam.conf: "$ConfigPath

	fi

# Find setting for oscam httptpl folder in file oscam.conf 
OscamTplFolder=$(grep -r httptpl $ConfigPath/oscam.conf | cut -d= -f2 | xargs)

# Go to TPL folder
cd $OscamTplFolder

# Remove the previous downloaded file
[ -f Envi_Template.zip ] && rm -f Envi_Template.zip

# Download new files
wget -q $TrunkUrl

# Print to display
echo ""
echo "START SCRIPT TO DOWNLOAD THE FILE"
echo "---------------------------------"
echo ""
echo "Machine hardware name: "$MachineHardwareName
echo "Config path: "$ConfigPath
echo "Oscam template folder: "$OscamTplFolder

tmpfile=$(echo "$OscamTplFolder" |sed 's/.$//')
file="$tmpfile/Envi_Template.zip"
if [ -f "$file" ]
then
	echo "Downloaded file: $file was successfully downloaded"
else
	echo "Downloaded file: $file was not downloaded!!!"
	exit 0
fi

# Remove the previous files
[ -f CSS.tpl ] && rm -f CSS.tpl
[ -f FOOTER.tpl ] && rm -f FOOTER.tpl
[ -f HEADERSHORT.tpl ] && rm -f HEADERSHORT.tpl
[ -f info.txt ] && rm -f info.txt

# Print to display
echo ""
echo "Old files have been deleted"
echo ""
echo "Decompressed files:"

#  Decompression
unzip Envi_Template.zip

# Print to display info about Envi
InfoRevision=$(grep -r Revision $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)
InfoAuthors=$(grep -r Authors $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)
InfoDate=$(grep -r Date $OscamTplFolder/info.txt | cut -d':' -f2 | xargs)

echo ""
echo "INFO ABOUT ENVI"
echo "---------------"
echo "Envi Revision: $InfoRevision"
echo "Authors: $InfoAuthors"
echo "Last Changed Date: $InfoDate"

#  Remove a compressed file and exit
rm -if Envi_Template.zip || exit 1
#done all OK
exit 0