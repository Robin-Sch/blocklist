#! /usr/bin/bash
input=./lists.txt
output=./hosts

while read line; do curl $line >> $output; done < $input

sed -i '/^#/d' $output # remove comments
# gives problems with localhost
# sed -i '/^0\.0\.0\.0*/!s/.*/0.0.0.0 &/' $output # if not starts with 0.0.0.0, add it
awk -i inplace '!a[$0]++' $output # remove duplicated

totaldomains=$(awk '!/^#/ && !/^$/{c++}END{print c}' $output | awk '{ len=length($0); res=""; for (i=0;i<=len;i++) { res=substr($0,len-i+1,1) res; if (i > 0 && i < len && i % 3 == 0) { res = "," res } }; print res }')
echo "$totaldomains domains blocked"