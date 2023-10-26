#!/opt/homebrew/bin/bash
bash --version
files=`ls`
for file in $files
do
if [[ $file =~ .*-cordinates\.json ]]
then
num=`echo $file | /opt/homebrew/bin/gawk 'BEGIN{FPAT="[0-9]*"}{print $1}'`
echo $num::`cat $file | /opt/homebrew/bin/gsed -n '/\"vrn\"/{p;}'` >>text.txt
fi
done