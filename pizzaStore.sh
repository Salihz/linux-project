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

# figlet SKYAB | lolcat

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

price_L=23
price_M=18
price_S=14
printf "======  OUR MENU LIST ======\n"
printf "1.Pepperoni pizza
             -large size = $price_L
             -Medium size = $price_M
             -small  size = $price_S

    2.Veggie pizza
            -large size = $price_L
             -Medium size = $price_M
             -small  size = $price_S
    3.Meat pizza
            -large size = $price_L
             -Medium size = $price_M
             -small  size = $price_S

    4.Cheese pizza
             -large size = $price_L
             -Medium size = $price_M
             -small  size = $price_S\n"

printf "${STOP}\n"

TOTAL=0
while true
do
printf "Choose your pizza , (1)for PEPPERONI, (2) for VEGGIE, (3) for MEAT, (4) for CHEESE\n" TYPE
read TYPE
if [ $TYPE == 1 ]
then
echo "YOU CHOOSE PEPPERONI PIZZA  "
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
echo -n "choose the size: (s) for SMALL, (m) for MEDIUM, (l) for LARGE"  #SIZE 
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

PRICE=
echo ""
         if [ $SIZE == l ]
         then
         printf "${ORANGE}"
         printf "Large pizza is ${price_L}\n "
         PRICE=${price_L}
         printf "${STOP}"

         elif [ $SIZE == m ]
         then
         PRICE=${price_M}
         echo "Medium pizza is $ $price_M"
         PRICE=${price_M}
       

         elif [ $SIZE == s ]
         then
         echo "Small pizza is $ $price_S"
         PRICE=${price_S}
        
         
         else
         echo "NOTHING SELECTED"
         fi

printf "Do you want another pizza? (y) for YES (n) for NO"
read Another_Pizza

((TOTAL+=$PRICE ))

if [ $Another_Pizza == y ]
then
echo "choose your pizza : "

else
break
fi
done
echo "Your total is $ $TOTAL"


