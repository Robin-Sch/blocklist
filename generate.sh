#! /usr/bin/bash
input=./lists.txt
output=./hosts

TMPFILE=$(mktemp)
if [ -f "$output" ]; then rm $output; fi

while read line; do curl $line >> $TMPFILE; done < $input

sed -i '/^[[:space:]]*$/d' $TMPFILE # remove empty lines

# Check if first line is [Adblock Plus], meaning file is in ABP format
if [ "$(sed -n '/^\[Adblock Plus\]/p;q' $TMPFILE)"]; then
	tail -n +2 $TMPFILE > $TMPFILE.tmp && mv $TMPFILE.tmp $TMPFILE # remove first line ([Adblock Plus]), weirdness is needed: https://stackoverflow.com/a/339941
	sed -i '/^!/d' $TMPFILE # remove comments
	sed -i 's/||//g' $TMPFILE # remove || from the beginning of the line
	sed -i 's/\^//g' $TMPFILE # remove ^ from the beginning of the line
else # probably? in HOSTS format
	sed -i '/^#/d' $TMPFILE # remove comments
	sed -i '/^[[:space:]]*$/d' $TMPFILE # remove empty lines
	sed -i 's/127\.0\.0\.1/0.0.0.0/g' $TMPFILE; # replace 127.0.0.1 with 0.0.0.0
fi

sed -i '/^0\.0\.0\.0*/!s/.*/0.0.0.0 &/' $TMPFILE # if not starts with 0.0.0.0, add it
awk '!seen[$0]++' $TMPFILE > $output # remove duplicated

echo "127.0.0.1 localhost" >> $output
echo "::1 localhost" >> $output
echo "" >> $output

totaldomains=$(awk '!/^#/ && !/^$/{c++}END{print c}' $output | awk '{ len=length($0); res=""; for (i=0;i<=len;i++) { res=substr($0,len-i+1,1) res; if (i > 0 && i < len && i % 3 == 0) { res = "," res } }; print res }')
echo "$totaldomains domains blocked"
