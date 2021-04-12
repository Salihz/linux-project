#!/bin/bash
#  USING ANSI COLORS
#RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"

printf "${BLUE}"
printf "**********************************\n"
printf "${GREEN}"
printf "WELCOME TO\n"
printf "${STOP}"

figlet SKYAB | lolcat

printf "${GREEN}"
printf "PIZZA\n"
printf "${BLUE}"
printf "***********************************\n"
printf "${STOP}"

read -p "First Name: " FName
read -p "Last Name: " LName
read -p "Phone Number: " Pnumber
printf "Press [1] for DELIVERY | Press [2] for PICK-UP :" order
read order
if [ $order == 1 ]
then
echo "YOU SELECTED : DELIVERY"
read -p "Enter your Address : " Address
printf "\nplease Verify your information :
First Name : $FName
Last Name : $LName
Phone Number : $Pnumber
Address  : $Address\n"
printf "Press [1] for CORRECT INFO | Press [2] for INCORRECT INFO :" info_ver
read info_ver
if [ $info_ver == 1 ]
then
echo "YOU SELECTED  DELIVERY"
elif [ $info_ver == 2 ]
then
echo "INCORRECT INFO"
fi

elif [ $order == 2 ]
then
echo "YOU SELECTED PICK-UP"
else
echo "Nothing"
fi

# MENU

printf "${BLUE}"
printf "======  OUR MENU LIST ======"
printf "

1.PEPPERONI PIZZA

    -Large size = 23
    -Medium size = 18
    -Small  size = 14

2.VEGGIE PIZZA

    -Large size = 23
    -Medium size = 18
    -Small  size = 14

3.MEAT PIZZA

    -Large size = 23
    -Medium size = 18
    -Small  size = 14

4.CHEESE PIZZA

    -Large size = 23
    -Medium size = 18
    -Small  size = 14"


printf "${STOP}\n"

printf "Choose your pizza , PEPPERONI=1 VEGGIE=2 MEAT=3 CHEESE=4 :\n" TYPE
read TYPE
if [ $TYPE == 1 ]
then
echo "YOU CHOOSE PEPPERONI PIZZA"
elif [ $TYPE == 2 ]
then
echo "YOU CHOOSE VEGGIE PIZZA"
elif [ $TYPE == 3 ]
then 
echo "YOU CHOOSE MEAT  PIZZA"
elif [ $TYPE == 4 ]
then
echo "YOU CHOOSE PIZZA"
else
echo  "Nothing"
fi


shopt -s nocasematch
echo -n "choose the size: (s) for SMALL, (m) for MEDIUM, (l) for LARGE :" SIZE 
read SIZE
case $SIZE in
s)
echo -n "You selected small size pizza"
;;
m)
echo -n "You selected medium size pizza"
;;
l)
echo -n "You selected large size pizza"
;;
*)
echo -n "Information not available"
;;
esac
echo ""







                         
