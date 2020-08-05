#!/bin/bash

# This script generates a list of random passwords

#PASSWORD="${RANDOM}"
#echo "${PASSWORD}"

# Three random numbers together
#PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
#echo "${PASSWORD}"

#Use the current date for password
#PASSWORD=$(date +%s%N)
#echo "${PASSWORD}"

# Create a hashed password

#PASSWORD=$(date +%s%N | sha256sum | head -c8)
#echo "$PASSWORD"

#PASSWORD=$(date +%s%N ${RANDOM}${RANDOM}${RANDOM} | sha256sum | head -c10 | less -c8)
#echo "$PASSWORD"

PASSWORD=$(date +%s%N | sha256sum | head -c10 | less -c8)
SPECIAL_CHARACTER=$(echo '!@#$$%^&*()' | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"
