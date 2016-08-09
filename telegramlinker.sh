#!/bin/bash



function generateFile {
echo "abcdefghjklmnopqrstuvwyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_" | grep -o . > chars.txt

}

function generateLink {
IFS=$'\r\n' GLOBIGNORE='*' command eval  'XYZ=($(cat chars.txt))'

for i in {0..22}
do
nmb=$(( ( RANDOM % 62 )  + 1 ))
link="$link${XYZ[$nmb]}"

done



link="telegram.me/joinchat/$link"

echo $link


}


read -p "How many links do you want to create? " links

generateFile

x=1
while [ $x -le $links ]
do
  generateLink
  link=""
  x=$(( $x + 1 ))
done
