#!/bin/bash
head -n 7 0315_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 10 0315_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 17 0315_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"

