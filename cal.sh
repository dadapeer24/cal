#!/bin/bash
echo -e  "\n\n =======CALUCULATER MENU======="
echo -e " \n 1) ADD \n 2) SUB \n 3) MULTIPLICATION \n 4) DIVISION \n 5) EXIT \n 6) Factorial"

echo " select one option in above MENU "
read opt
#set -x
case $opt in
  1) echo "enter  numbers for addition"
     read num
     sum=0
     for i in $num
     do
       sum=`expr $sum + $i`
     done
     echo "sum of $num is $sum"
     ;;
   2) echo "enter a numbers for substraction"
      read n1
      echo "enter another numbrer for substraction"
      read n2
      if [ $n1 -gt $n2 ]
        then
        sub=`expr $n1 - $n2`
        echo " $n1 - $n2 = $sub "
        else
        sub=`expr $n2 - $n1`
        echo " $n2 - $n1 = $sub "
      fi
      ;;
    3) echo "enter no.s for multiplication"
       read num
       mul=1
        for i in $num
        do
         mul=`expr $mul \* $i`
        done
        echo " multiplication of $num is $mul "
      ;;
    4) echo "enter no.s  for  division"
        read num1
        echo " enter another no."
        read num2
        if [ $num1 -gt $num2 ]
        then
        div=`expr $num1 / $num2`
        echo "division of $num1 by $num2 is $div "
        else
        div=`expr $num2 / $num1`
        echo "division of $num2 by  $num1 is $div "
        fi
       ;;
     5) echo "you have entered option to exit"
        exit 0
       ;;
     6) echo "enter number to find factorial"
        read num
        for i in $num
        do
        fact=`expr $i \* $fact`
        fact=`expr $fact - 1`
        done
        echo "factorial of $num = $fact"

        ;;
 esac
