#! /usr/bin/bash
output=./lists.txt

if [ -f "$output" ]; then rm $output; fi
touch lists.txt

echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" >> lists.txt
echo "https://raw.githubusercontent.com/CamelCase11/UnifiedHosts/master/hosts.all" >> lists.txt

enabled=$(whiptail --checklist "Select which topics you want to block" $(stty size) 10 --nocancel \
  "suspicious" "" on \
  "advertising" "" on \
  "tracking" "" on \
  "Malicious" "" on \
  "fakenews" "" on \
  "gambling" "" on \
  "porn" "" on \
  "social" "" on \
  "virusses" "" on \
  "illegal" "" on \
  "extreme" "" on \
  "other" "" on \
  3>&1 1>&2 2>&3)

case $enabled in
	*suspicious* )
		echo "https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts" >> lists.txt
		echo "https://v.firebog.net/hosts/static/w3kbl.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/matomo-org/referrer-spam-blacklist/master/spammers.txt" >> lists.txt
		echo "https://someonewhocares.org/hosts/zero/hosts" >> lists.txt
		echo "https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts" >> lists2.txt
		echo "https://winhelp2002.mvps.org/hosts.txt" >> lists.txt
		echo "https://v.firebog.net/hosts/neohostsbasic.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt" >> lists.txt
		echo "https://paulgb.github.io/BarbBlock/blacklists/hosts-file.txt" >> lists.txt
	;;&
	*advertising* )
		echo "https://adaway.org/hosts.txt" >> lists2.txt
		echo "https://v.firebog.net/hosts/AdguardDNS.txt" >> lists.txt
		echo "https://v.firebog.net/hosts/Admiral.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt" >> lists.txt
		echo "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt" >> lists.txt
		echo "https://v.firebog.net/hosts/Easylist.txt" >> lists.txt
		echo "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" >> lists2.txt
		echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts" >> lists.txt
		echo "https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts" >> lists.txt
		echo "https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts" >> lists2.txt
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/ads-and-tracking-extended.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/ads.txt" >> lists.txt
	;;&
	*tracking* )
		echo "https://v.firebog.net/hosts/Easyprivacy.txt" >> lists.txt
		echo "https://v.firebog.net/hosts/Prigent-Ads.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts" >> lists.txt
		echo "https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt" >> lists.txt
		echo "https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt" >> lists.txt
		echo "https://hostfiles.frogeye.fr/multiparty-trackers-hosts.txt" >> lists.txt
		echo "https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/android-tracking.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/AmazonFireTV.txt" >> lists.txt
		echo "https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/tracking-aggressive-extended.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/tracking.txt" >> lists.txt
	;;&
    *fakenews* )
        echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts" >> lists.txt
    ;;&
	*gambling* )
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/gambling.txt" >> lists.txt
	;;&
	*porn* )
		echo "https://block.energized.pro/extensions/porn-lite/formats/hosts.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts" >> lists.txt
		echo "https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_all.list" >> lists.txt
		echo "https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_top1m.list" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/porn.txt" >> lists.txt
	;;&
	*social* )
		echo "https://block.energized.pro/extensions/social/formats/hosts.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts" >> lists.txt
		echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/facebook.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/facebook-extended.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/facebook.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/tiktok.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/whatsapp.txt" >> lists.txt
	;;&
	*virusses* )
		echo "https://blocklistproject.github.io/Lists/malware.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/ransomware.txt" >> lists.txt
	;;&
	*scam* )
		echo "https://blocklistproject.github.io/Lists/crypto.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/fraud.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/phishing.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/scam.txt" >> lists.txt

	;;&
	*illegal* )
		echo "https://blocklistproject.github.io/Lists/drugs.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/piracy.txt" >> lists.txt
	;;&
	*extreme* )
		echo "https://block.energized.pro/extensions/xtreme/formats/hosts.txt" >> lists.txt
	;;&
	*other* )
		echo "https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser" >> lists.txt
		echo "https://block.energized.pro/extensions/regional/formats/hosts.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/amp-hosts-extended.txt" >> lists.txt
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/hate-and-junk-extended.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/abuse.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/redirect.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/torrent.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/basic.txt" >> lists.txt
		echo "https://blocklistproject.github.io/Lists/smart-tv.txt" >> lists.txt
	;;
esac

if [[ $enabled == *porn* ]]; then
 	echo "https://block.energized.pro/unified/formats/hosts.txt" >> lists.txt
else
	echo "https://block.energized.pro/ultimate/formats/hosts.txt" >> lists.txt
fi

echo "" >> lists.txt