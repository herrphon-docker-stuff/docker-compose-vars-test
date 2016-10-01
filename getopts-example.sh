#!/bin/bash

# http://wiki.bash-hackers.org/howto/getopts_tutorial

while getopts 'a:b:' opt; do
	case $opt in
		a) ALPHA="$OPTARG" ;;
		b) BETA="$OPTARG" ;;
		*) exit 1 ;;
               \?) echo "Invalid option: -$OPTARG" >&2 ;;
	esac
done

echo ${ALPHA} ${BETA}
