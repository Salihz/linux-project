
#!/bin/bash

echo "-----Section 1 -  Printing  a text-----"

echo "this is  the text I am printing"

#
echo "-----Section 2 - Print a text with  command substitution, use any command you want-----"

echo "todays date is  $(date)"


#
echo "-----Section 3 - Print env variables inside the other things-----"

echo "Host name: $HOSTNAME User name: $USER Present wordking directory: $PWD"


#
echo "-----Section 4 - Printing several mathematical operations. Addition, subtraction, multiplication and division-----"

result=$(($1 + $2 * $3 / $4 - $5))
echo "The result is $result"
#above way you need to pass the parametes when you are executing the file: ./filename.sh 4 6 7 2


#
echo "----- Section 5 - Create an if/else statement and do some action if  true and if false-----"

echo read -p "are you happy?"
read n
#yes=$(echo $n | tr -s '[:upper:]' '[:lower:]')
if [[  "$n" = "yes"  ]] ; then
  echo "You are Happy!"
else
  echo "You are Unhappy or Confused"
fi
#exit

clear
#
echo "-----Section 6 - Test something using the test command-----"

# comparing two values:  -lt >> less than, -gt >> greater than, -eq >> equal
test 99 -lt 100 && echo "Yes" || echo "No"
test 99 -gt 100 && echo "Yes" || echo "No"
test 100 -eq 100 && echo "Yes" || echo "No"


#
echo "-----Section 7 -  Use if statements to compare with -eq, -ne, -gt and -le -----"

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


#
echo "-----Section 8 - Using the read command, prompt user  compare strings, check credentials >> user name and password-----"

echo read -p "enter your user name"
read UserN
USERN=$(grep "$UserN" /etc/passwd | cut -d ":" -f1)
test "$UserN" == "$USERN" && echo "Yes" || echo "No"

# same comparising using if else condition
#if [[ "$UserN" == "$USERN" ]] ; then
#echo "user name is correct"
#else
#echo "incorrect user name"
#fi


#<<<<<<< yordi

for num in $(seq 0 5)
do
echo $((num+1)) $num 
done
echo "======================"

# WHILE LOOP
NUM=0
while [ $NUM -lt 20 ]
do
Remainder=$(( $NUM % 2 ))
if [ $Remainder -eq  0 ]
then
echo " $NUM "
fi
NUM=$((NUM+1))
done
echo "================="

# UNTIL loop
NUM=1
until [ $NUM -gt 20 ]
do
Remainder=$(( $NUM % 2 ))
if [ $Remainder -ne  0 ]
then
echo " $NUM "
fi
NUM=$((NUM+1))
done

echo "=======================
# Function
#divide(){
#div=$(($1/$2))
#echo " The division of $1 and $2 is $div "
#}

#multiply(){
#mul=$((div))
#echo "The mult is $mul"
#}
#read -p "Enter a number >> " num1
#read -p "Enter another number >> " num2

#divide $num1  $num2
#=======
#=======
#>>>>>>> master
#
echo "-----Section 9 - Using for loop print numbers from 0 to 5, also print the number of the line-----"

#for i in 0 1 2 3 4 5
for i in $(seq 0 5)
do
echo $((i+1)) $i
done


#
echo "-----Section 10 - using while loop print all even numbers from 1 to 20-----"

num=20
i=1
while [ $i -le $num ]
do
if [ $(expr $i % 2) -eq 0 ]
then
echo $i
fi
i=$(expr $i + 1)
done


echo "### solution using seq ###"

for i in $(seq 2 2 20)
do
   echo $i
done


echo -e "\n### print both  even and odd numbers with indicator of even and odd###"
num=20
i=1
while [ $i -le $num ]
do
if [ $(expr $i % 2) -eq 0 ]
then
echo evenNum=$i
else
echo oddNum=$i
fi
i=$(expr $i + 1)
done


#
echo "-----Section 11 - Using Until loop print all odd numbers from 1 to 20-----"

i=0
until [ $i -gt 20 ]
do
if [ $(expr $i % 2) -ne 0  ]
then
echo $(($i))
fi
i=$(expr $i + 1)
done






#
echo "-----Section 12-----"

: '
Create a fiunction that divides two numbers and multiplies the result of the division by 10 and then 
10 is substract it from result. Print the result. Call the function passing two numbers
'

calculate () {
#<<<<<<< yordi
  local result=$(( $1 / $2 * $3 - $4 ))
=======
  local result=$(($1 / $2 * $3 - $4))
#>>>>>>> master
  echo "$result"
}

result="$(calculate 21 7 10 10)"
echo "The sum is: "$result


#
echo "-----Section 13 - Create a function that prints env variables, print today's day and finds reminder of division of 10 and 3-----"

func () {
#<<<<<<< yordi
local DATE=$((date))
local reminder=$(($1 % $2))
echo "$reminder"
echo "$DATE"
}
reminder="$(func 10 3)"
DATE=$(date)
echo -e "Today date is $DATE \nReminder of 10/3 is: "$reminder 
#echo "$DATE"

# Mul
multiply (){
local mul=$(( $1 * $2 ))
echo "$mul"
}
mul=$(multiply 4 34)
echo "$mul"

                     echo"END OF THE CHALLENGE"
#=======

local reminder=$(($1 % $2))
echo "$reminder"
echo "$DATE"
}
reminder="$(func 10 3)"
DATE=$(date)
echo -e "Today's date is: $DATE\nReminder of 10/3 is: "$reminder 



#
echo "-----Section 14 - Create a function that returns the multiplication of 4 by 34-----"


multiplication () {
  local result=$(($1 * $2))
  echo "$result"
}

result=$(multiplication 4 34)
echo "The sum is: "$result

#>>>>>>> master
