#!/bin/bash

echo "A Script"
date
echo -e "Uname info:$(uname -a) \n"
echo -e "IP INFO: $(ip addr | head -9 | tail -1) \n"
echo -e "Hostname: $(hostname) \n"
