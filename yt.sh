#!/bin/bash
clear
echo
echo -e "\e[5;32m                    *╔═══❖•ೋ° °ೋ•❖═══╗*  \e[0m"
				
echo -e "\e[3;32m                     《Yt-downloader》   \e[0m" "\e[3;37m v1.0 \e[0m"
																				
echo -e "\e[5;32m  	            *╚═══❖•ೋ° °ೋ•❖═══╝*  \e[0m"
		                 				

echo
printf "Enter the Link : "
read lol
sleep 1
echo
printf "  Do u  need to continue [ y/n ] : "
	 						    			 		
#echo "y, 1"
#echo "n, 2"
read shit

echo
cond="-F"
condr="-f"
loc=/sdcard

youtube-dl $cond $lol
echo
printf " Enter format : "
	
read format					


if [[ $shit == y ]]
then	
   echo -e "\e[5;32m Downloading... \e[0m"
   youtube-dl $condr $format $lol

elif [[ $shit == n ]]
then	
   echo -e "\e[5;32m quitting.... \e[0m"
else
   echo shit
fi

echo
printf  " Do u want to move [ y/n ] : "      			
#echo "y, 1"
#echo "n, 2"
read mov
sleep 2


ls

printf " Enter the file (without single/double quotes) : "
read file

echo
if [[ $mov == y ]]
then
   echo -e "\e[2;31m Moving .... \e[0m"
   mv "$file" $loc
sleep 3
elif [[ $mov == n ]]
then
   echo -e "\e[6;33m Quit... \e[0m"
else
   echo " shiit"
fi
echo
echo -e "\e[2;35m DONE .!!! \e[0m"
echo


exit 0
