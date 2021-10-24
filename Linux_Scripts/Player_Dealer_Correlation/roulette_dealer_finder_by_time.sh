#!/bin/bash

Roulette="'{$5, $6}'"

#cat "$1"_Dealer_schedule | grep "$2" | grep "$3" 
  cat "$1"_Dealer_schedule | grep "$2" |  grep "$3" | awk '{print $1,$2,$3,$4}'




#1 = File date | 3 = time of day AM or PM | awk = Roulette Dealers  
