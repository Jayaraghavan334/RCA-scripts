#!/opt/homebrew/bin/bash
a=`ls`
for file in $a
do
if [[ ! ${file: -2} =~ py && ! ${file: -4} =~ bash && ! ${file: -3} =~ txt ]]
then
num=`echo $file | /opt/homebrew/bin/gawk 'BEGIN{FPAT="[0-9]*"}{print $1}'`
ext=`echo $file | /opt/homebrew/bin/gawk 'BEGIN{FPAT="[^0-9]+"}{print $1}'`
num=`printf "%03d" $num`
mv $file $num$ext
fi
done