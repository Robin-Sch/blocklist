#! /usr/bin/bash
input=./lists.txt
output=./hosts.txt

while read line; do curl $line >> $output; done < $input

totaldomains=$(awk '!/^#/ && !/^$/{c++}END{print c}' $output | awk '{ len=length($0); res=""; for (i=0;i<=len;i++) { res=substr($0,len-i+1,1) res; if (i > 0 && i < len && i % 3 == 0) { res = "," res } }; print res }')
echo "$totaldomains domains blocked"