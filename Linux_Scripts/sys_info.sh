#!/bin/bash

#paths
paths=('/etc/shadow' '/etc/passwd');
	for paths in ${paths[@]}
do
 	ls -la $paths >> output
	done
done
