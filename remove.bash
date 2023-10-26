#!/opt/homebrew/bin/bash
bash --version
files=`ls`
for file in $files
do
if [[ $file =~ .*-cordinates\.json ]]
then
/opt/homebrew/bin/gsed -i 's/{.*}//g;' $file
fi
done
