#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the vagrant user or not

# DIsplay the UID

echo "your UID is ${UID}"

# Only Display if the UID does not match 1000

UID_TO_TEST='1000'

if [[ "${UID}" -ne "$UID_TO_TEST" ]]
then
  echo "Your UID does not match ${UID_TO_TEST}"
  exit 1
fi

# Display the username
USER_NAME=$(id -un)

# Test if the command succeeded

if [[ "${?}" -ne 0 ]]
then
  echo 'the id command did not execute successfuly'
  exit 1
fi
echo "Your username is ${USER_NAME}"

# String test conditional equal to
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "$USER_NAME" = "${USER_NAME_TO_TEST_FOR}" ]]
then
  echo "your Username matches ${USER_NAME}"
fi


# String test conditional non-equal to
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "$USER_NAME" != "${USER_NAME_TO_TEST_FOR}" ]]
then
  echo "your Username doesnt match ${USER_NAME}"
fi

exit 0
