#! /usr/bin/bash
output=./lists.txt

if [ -f "$output" ]; then rm $output; fi
touch $output

echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts" >> $output

enabled=$(whiptail --checklist "Select which topics you want to block" $(stty size) 10 --nocancel \
  "general" "" on \
  "advertising" "" on \
  "tracking" "" on \
  "malicious" "" on \
  "gambling" "" on \
  "porn" "" on \
  "social" "" on \
  "scam" "" on \
  "illegal" "" on \
  "extreme" "" on \
  3>&1 1>&2 2>&3)

case $enabled in
	*general* )
		echo "https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt" >> $output
		echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/hosts" >> $output
		echo "https://v.firebog.net/hosts/static/w3kbl.txt" >> $output
		echo "https://raw.githubusercontent.com/matomo-org/referrer-spam-blacklist/master/spammers.txt" >> $output
		echo "https://someonewhocares.org/hosts/zero/hosts" >> $output
		echo "https://raw.githubusercontent.com/VeleSila/yhosts/master/hosts" >> $output
		echo "https://winhelp2002.mvps.org/hosts.txt" >> $output
		echo "https://v.firebog.net/hosts/neohostsbasic.txt" >> $output
		echo "https://raw.githubusercontent.com/RooneyMcNibNug/pihole-stuff/master/SNAFU.txt" >> $output
		echo "https://paulgb.github.io/BarbBlock/blacklists/hosts-file.txt" >> $output
		echo "https://zerodot1.gitlab.io/CoinBlockerLists/hosts_browser" >> $output
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/amp-hosts-extended.txt" >> $output
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/hate-and-junk-extended.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/abuse.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/redirect.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/torrent.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/basic.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/smart-tv.txt" >> $output
		echo "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/pro.txt" >> $output
		echo "https://raw.githubusercontent.com/AdroitAdorKhan/antipopads-re/master/formats/hosts.txt" >> $output
	;;&
	*advertising* )
		echo "https://adaway.org/hosts.txt" >> $output
		echo "https://v.firebog.net/hosts/AdguardDNS.txt" >> $output
		echo "https://v.firebog.net/hosts/Admiral.txt" >> $output
		echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt" >> $output
		echo "https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt" >> $output
		echo "https://v.firebog.net/hosts/Easylist.txt" >> $output
		echo "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" >> $output
		echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/UncheckyAds/hosts" >> $output
		echo "https://raw.githubusercontent.com/bigdargon/hostsVN/master/hosts" >> $output
		echo "https://raw.githubusercontent.com/jdlingyu/ad-wars/master/hosts" >> $output
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/ads-and-tracking-extended.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/ads.txt" >> $output
		echo "https://hosts.oisd.nl/basic/" >> $output
		echo "https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt" >> $output
	;;&
	*tracking* )
		echo "https://v.firebog.net/hosts/Easyprivacy.txt" >> $output
		echo "https://v.firebog.net/hosts/Prigent-Ads.txt" >> $output
		echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.2o7Net/hosts" >> $output
		echo "https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt" >> $output
		echo "https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt" >> $output
		echo "https://hostfiles.frogeye.fr/multiparty-trackers-hosts.txt" >> $output
		echo "https://www.github.developerdan.com/hosts/lists/ads-and-tracking-extended.txt" >> $output
		echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/android-tracking.txt" >> $output
		echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt" >> $output
		echo "https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/AmazonFireTV.txt" >> $output
		echo "https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-blocklist.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/tracking.txt" >> $output
		echo "https://justdomains.github.io/blocklists/lists/easyprivacy-justdomains.txt" >> $output
		echo "https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/alexa" >> $output
		echo "https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/apple" >> $output
		echo "https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/huawei" >> $output
		echo "https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/samsung" >> $output
		echo "https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/sonos" >> $output
		echo "https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/windows" >> $output
		echo "https://raw.githubusercontent.com/nextdns/native-tracking-domains/main/domains/xiaomi" >> $output
	;;&
	*malicious* )
		echo "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareHosts.txt" >> $output
		echo "https://osint.digitalside.it/Threat-Intel/lists/latestdomains.txt" >> $output
		echo "https://s3.amazonaws.com/lists.disconnect.me/simple_malvertising.txt" >> $output
		echo "https://v.firebog.net/hosts/Prigent-Crypto.txt" >> $output
		echo "https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts" >> $output
		echo "https://bitbucket.org/ethanr/dns-blacklists/raw/8575c9f96e5b4a1308f2f12394abd86d0927a4a0/bad_lists/Mandiant_APT1_Report_Appendix_D.txt" >> $output
		echo "https://phishing.army/download/phishing_army_blocklist_extended.txt" >> $output
		echo "https://gitlab.com/quidsup/notrack-blocklists/raw/master/notrack-malware.txt" >> $output
		echo "https://v.firebog.net/hosts/RPiList-Malware.txt" >> $output
		echo "https://v.firebog.net/hosts/RPiList-Phishing.txt" >> $output
		echo "https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt" >> $output
		echo "https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts" >> $output
		echo "https://urlhaus.abuse.ch/downloads/hostfile/" >> $output
		echo "https://malware-filter.gitlab.io/malware-filter/phishing-filter-hosts.txt" >> $output
		echo "https://v.firebog.net/hosts/Prigent-Malware.txt" >> $output
	;;&
	*gambling* )
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts" >> $output
		echo "https://blocklistproject.github.io/Lists/gambling.txt" >> $output
		echo "https://raw.githubusercontent.com/blocklistproject/Lists/master/alt-version/gambling-nl.txt" >> $output
	;;&
	*porn* )
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/porn/hosts" >> $output
		echo "https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_all.list" >> $output
		echo "https://raw.githubusercontent.com/chadmayfield/my-pihole-blocklists/master/lists/pi_blocklist_porn_top1m.list" >> $output
		echo "https://blocklistproject.github.io/Lists/porn.txt" >> $output
		echo "https://raw.githubusercontent.com/Sinfonietta/hostfiles/master/pornography-hosts" >> $output
		echo "https://v.firebog.net/hosts/Prigent-Adult.txt" >> $output
	;;&
	*social* )
		echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/social/hosts" >> $output
		echo "https://raw.githubusercontent.com/anudeepND/blacklist/master/facebook.txt" >> $output
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/facebook-extended.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/facebook.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/tiktok.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/whatsapp.txt" >> $output
	;;&
	*scam* )
		echo "https://blocklistproject.github.io/Lists/malware.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/ransomware.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/crypto.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/fraud.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/phishing.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/scam.txt" >> $output
		 echo "https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews/hosts" >> $output
	;;&
	*illegal* )
		echo "https://blocklistproject.github.io/Lists/drugs.txt" >> $output
		echo "https://blocklistproject.github.io/Lists/piracy.txt" >> $output
	;;&
	*extreme* )
		echo "https://raw.githubusercontent.com/hagezi/dns-blocklists/main/hosts/ultimate.txt" >> $output
		echo "https://raw.githubusercontent.com/lightswitch05/hosts/master/docs/lists/tracking-aggressive-extended.txt" >> $output
	;;&
esac

echo "" >> $output

