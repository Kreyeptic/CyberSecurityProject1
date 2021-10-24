
#!/bin/bash

head -n 8 0310_Dealer_schedule | awk ' {print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 10 0310_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 16 0310_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 22 0310_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
head -n 26 0310_Dealer_schedule | awk '{print $1, $2, $5, $6}' | grep "Billy Jones"
