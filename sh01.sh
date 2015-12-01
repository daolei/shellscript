#!/bin/bash
#Program:
#	This program shows "hello world" in your screen.
#History:
#2015/11/30 xiaoxiaosu First release
exprot PATH
echo -e "You Should input 2 numbers, I will cross them! \n"
read -p "first name: " firstnu
read -p "second name: " secondnu
total=$(($firstnu*$secondnu))
echo  "\nthe total is  $total"
