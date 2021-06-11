#! /usr/bin/bash
output=./lists.txt

if [ -f "$output" ]; then rm $output; fi
touch lists.txt

echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" >> lists.txt
echo "https://raw.githubusercontent.com/CamelCase11/UnifiedHosts/master/hosts.all" >> lists.txt

enabled=$(whiptail --checklist "Select which topics you want to block" $(stty size) 10 --nocancel \
  "fakenews" "" on \
  "gambling" "" on \
  "porn" "" on \
  "social" "" on \
  "regional" "" on \
  "extreme" "" on \
  3>&1 1>&2 2>&3)

case $enabled in
    *fakenews* )
        echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts" >> lists.txt
    ;;&
	*gambling* )
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts" >> lists.txt
	;;&
	*porn* )
		echo "https://block.energized.pro/extensions/porn-lite/formats/hosts.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts" >> lists.txt
	;;&
	*social* )
		echo "https://block.energized.pro/extensions/social/formats/hosts.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts" >> lists.txt
	;;&
	*regional* )
		echo "https://block.energized.pro/extensions/regional/formats/hosts.txt" >> lists.txt
	;;&
	*extreme* )
		echo "https://block.energized.pro/extensions/xtreme/formats/hosts.txt" >> lists.txt
	;;
esac

if [[ $enabled == *porn* ]]; then
 	echo "https://block.energized.pro/unified/formats/hosts.txt" >> lists.txt
else
	echo "https://block.energized.pro/ultimate/formats/hosts.txt" >> lists.txt
fi

echo "" >> lists.txt