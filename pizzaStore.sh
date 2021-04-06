#!/bin/bash

read -p "First Name: " fName
echo
read -p "Last Name: " lName
echo
read -p "Phone Number: " pNumber
echo
read -p "Press [1] for DELIVERY | Press [2] for PICK-UP" order

if [ "$order" == "1" ]
then
echo "You selected: DELIVERY"
read -p "Enter your Address: " address
echo

wait 2
echo -e "\nPlease verify your information:
--------------------------------
First Name: $fName
Last Name: $lName
Phone Number: $pNumber
Address: $address
"
read -p "Press [1] for CORRECT INFO | Press [2] for INCORRECT INFO " infoVer
 if [ $infoVer == 1 ]
    then
    #
    echo "Please select your product for DELIVERY"
    elif [ $inforVer == 2 ]
    then
    #
    echo "We will need loop here"
 fi

elif
[ "$order" == "2" ]
then
echo "You selected: PICK-UP"

else
  echo "test"
  fi
