 #!/bin/bash
chosecontent=(`cat "art.log"| cut -f 1-10 -d " " | tr -d \ | tr "|" : | cut -f 1-3 -d : | sort | uniq -c | tr -d " " | grep ^3 | cut -c 2-40`) 

allcontent=(`cat "art.log"| cut -f 1-10 -d " " | tr -d \ | tr "|" : | cut -f 1-5 -d : `)

for k in "${allcontent[@]}"
do
for ss in "${chosecontent[@]}"
do
if [[ "$k" =~ "$ss" ]]
then
if [[ "$k" =~ "userloggedoff" || "$k" =~ "userloggedin" ]]
then
echo $k 
fi
fi
done
done | cut -f 1-3 -d : | sort | uniq -c | tr -d " " | grep ^2 | cut -f 3 -d :  

