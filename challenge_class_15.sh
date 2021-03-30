
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

#
echo -e "-----Section 6 - Test something using the test command-----"

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
echo -e "-----Section 8 - Using the read command, prompt user  compare strings, check credentials >> user name and password"

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
divide(){
div=$(($1/$2))
echo " The division of $1 and $2 is $div "
}

multiply(){
mul=$((div))
echo "The mult is $mul"
}
read -p "Enter a number >> " num1
read -p "Enter another number >> " num2

divide $num1  $num2
