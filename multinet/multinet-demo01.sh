#!/bin/bash
#
# This script pings a list of servers and reports their status

SERVER_FILE="/vagrant/servers"

if [[ ! -e "${SERVER_FILE}" ]]
then
  echo "Cannot open ${SERVER_FILE}." >&2
  exit 1
fi

for SERVER in $(cat ${SERVER_FILE})
do
  echo "Executing Ping on ${SERVER}"
  ping -c 1 ${SERVER} &> /dev/null
  if [[ "${?}" -ne 0 ]]
    then
      echo "${SERVER} is down"
    else
      echo "${SERVER} is Up"
  fi
done
