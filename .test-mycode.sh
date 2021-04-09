#!/bin/bash
#!/bin/bash

# USING ANSI COLORS

#RED="\e[31m"
#ORANGE="\e[33m"
#BLUE="\e[94m"
#GREEN="\e[92m"
#STOP="\e[0m"

#printf "${GREEN}"
#printf "======================================================\n"

#printf "${BLUE}"
#figlet -w 200 -f standard "SKYAB"

#printf "=====================================================\n"

# figlet with lolcat

                     figlet SKYAB | lolcat
select the in Delivery  pick-up
do
echo "put your information"
break
done
read -p "Your First And Last Name :"
read -p "Phone number: >> "
read -p "Address :"
read -p "How Do You Want To Order >> "
read order
if [ $order==Delivery ] 
then
echo "Delivery"
read -p "Address "
elif [ $order==pick-up ]
then
echo "pick-up"
fi

echo "============================================"



# MENU
echo "=======Our MENU  LIST========="
echo "1.Pepperoni pizza
       -large size = 23
       -Medium size = 18
       -small  size = 14"
echo "2.Veggie pizza
        -large size = 23
        -Medium size = 18
        -small  size = 14"

echo "3.Meat pizza
            -large size = 23
           -Medium size = 18
           -small  size = 14"

echo "4.Cheese pizza
        -large size = 23
        -Medium size = 18
        -small  size = 14"

echo "choose your topping
      Extra cheese,mushroom,broccilin"
      
read -p "Choose your pizza , PEPPERONI=1 VEGGIE=2 MEAT=3 CHEESE=4 :" TYPE
read -p "choose size :" size
#echo "you selected: $TYPE "
#echo "you select: $size "


#shopt -s nocasematch
#echo -n "Enter the size of pizza: "
#read SIZE
#echo -n "The size of $SIZE is "
#read SIZE
read -p "choose the size:  SIZE(s) for SMALL, (m) for MEDIUM, (l) for LARGE" 
read SIZE
echo -n "The size of pizza is $SIZE"
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








LARGE=l
MEDIUM=M
SMALL=s
#if [ $TYPE == 1 ] && [ $size == l ]    
#then
 ###



#Toppings=(hum onion cheese jalapeno)
#Prices=(0.90 0.30 0.40 0.78)

#echo "we have these toppings"
#echo "hum onoin cheese jalapeno"
#counter=1
#for topping in ${toppings[@]}
#do
#echo "$counter.$topping"
#((counter++))
#done
#echo "========================="

#read -p " choose one"

#case $selection in
#1) echo "${toppings[0]} - \$${prices[0]},";;
#2) echo "${toppings[1]}";;
#3) echo "${toppings[2]}";;
#esac




