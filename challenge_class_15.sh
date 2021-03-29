#!/bin/bash

echo "-----Section 1 -  Printing  a text-----\n"

echo "this is  the text I am printing"

echo "\n-----Section 2 - Print a text with  command substitution, use any command you want-----\n"

echo "todays date is  $(date)"

echo -e "\n-----Section 3 - Print env variables inside the other things-----\n"

echo -e "\nHost name: $HOSTNAME \nUser name: $USER \nPresent wordking directory: $PWD"

echo -e "\n-----Section 4 - Printing several mathematical operations. Addition, subtraction, multiplication and division-----\n"

result=$(($1 + $2 * $3 / $4 - $5))
echo "The result is $result"
#if you do  above way  you need to pass the parametes when you are executing the file: ./filename.sh 4 6 7 2 

echo -e "\n----- Section 5 - Create an if/else statement and do some action if  true and if false-----\n"



echo read -p "are you happy?"
read n
#yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
  echo "You are Happy!"
else
  echo "You are Unhappy or Confused"
fi
#exit


echo -e "\n-----Section 6 - Test something using the test command-----\n"

# comparing two values:  -lt >> less than, -gt >> greater than, -eq >> equal

test 99 -lt 100 && echo "Yes" || echo "No"

test 99 -gt 100 && echo "Yes" || echo "No"

test 100 -eq 100 && echo "Yes" || echo "No"


echo -e "/n-----Section 7 -  Use if statements to compare with -eq, -ne, -gt and -le -----/n"

echo read -p "Enter a number"
read Number

#if [[  "$Number" -eq 100 ]] ; then
#echo "$Number is equal to 100"

#elif [[ "Number" -ne 100 ]] ; then
#echo "$Number is not equal to 100"

if [[ "Number" -gt 100 ]] ; then
echo "$Number is greater than 100"

else [[ "Number" -le 100 ]] 
echo "$Number is less than or equal to 100"

fi


echo -e "\n-----Section 8 - Using the read command, prompt user  compare strings, check credentials >> user name and password\n"

echo read -p "enter your user name"
read UserN

USERN=$(grep "$UserN" /etc/passwd | cut -d ":" -f1)

test "$UserN" == "$USERN" && echo "Yes" || echo "No"



#if [[ "$UserN" == "$USERN" ]] ; then
#echo "user name is correct"
#else
#echo "incorrect user name"
#fi



