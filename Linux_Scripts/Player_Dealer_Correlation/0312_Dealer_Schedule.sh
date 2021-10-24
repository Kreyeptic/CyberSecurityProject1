#!/bin/bash

head -n 8  0312_Dealer_schedule | awk ' {print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 10 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 16 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 22 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 26 0312_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
