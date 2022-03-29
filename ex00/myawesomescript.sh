#!/bin/bash

# Previous nice versions:

# echo $@;
# curl -vL --silent $@ 2>&1 | 
# curl -v $@ 2>&1 | 
# curl -i $@ 2>&1 | 

# End of Previous nice versions.

# give me headers:
curl -I $@ 2>&1 | \
# find a line with the word "Location":
grep -w Location | \
# return a second column:
cut -d " " -f2
