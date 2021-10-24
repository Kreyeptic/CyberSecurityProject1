#!/bin/bash

#states
states=('TN' 'NC' 'MT' 'KY' 'TX' 'HA' )

for state in ${states[@]};
do
        echo $state
        if [ $state == 'HA' ]; then
                echo -e "Hawaii is the best! \n"
        else
                echo -e "I'm not a fan \n"
        fi
done
