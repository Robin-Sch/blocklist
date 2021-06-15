#! /usr/bin/bash
input=./lists.txt
input2=./lists2.txt
output=./hosts

if [ -f "$output" ]; then rm $output; fi

while read line; do curl $line >> $output; done < $input2
sed -i 's/127\.0\.0\.1/0.0.0.0/g' $output; # replace 127.0.0.1 with 0.0.0.0 (I'm not sure what the difference is)

while read line; do curl $line >> $output; done < $input

sed -i '/^#/d' $output # remove comments
sed -i '/^[[:space:]]*$/d' $output # remove empty lines

sed -i '/^0\.0\.0\.0*/!s/.*/0.0.0.0 &/' $output # if not starts with 0.0.0.0, add it
awk -i inplace '!a[$0]++' $output # remove duplicated
sed -i '/^[[:space:]]*$/d' $output # remove empty lines

echo "127.0.0.1 localhost" >> $output
echo "::1 localhost" >> $output
echo "" >> $output

totaldomains=$(awk '!/^#/ && !/^$/{c++}END{print c}' $output | awk '{ len=length($0); res=""; for (i=0;i<=len;i++) { res=substr($0,len-i+1,1) res; if (i > 0 && i < len && i % 3 == 0) { res = "," res } }; print res }')
echo "$totaldomains domains blocked"