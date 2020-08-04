#!/bin/bash


# Make sure the script is being executed with superuser privileges.
if [[ ${UID} -eq 0 ]]
  then
    echo "You are root"
  else
    echo "You are not root"
    exit 1
fi

# Get the username (login).
read -p 'Enter the user to create: ' USERNAME

# Get the real name (contents for the description field).
read -p 'Enter the username of the user to create: ' REAL_NAME

# Get the password.
read -p 'Enter the password to create: ' PASSWORD

# Create the user with the password.
useradd -c "${COMMENT}" -m ${USERNAME}

# Check to see if the useradd command succeeded.
if [[ ${?} -eq 0 ]]
then
  echo "User added"
else
  echo "error adding user"
fi


# Set the password.
echo ${PASSWORD} | passwd --stdin ${USERNAME}

# Check to see if the passwd command succeeded.
if [[ ${?} -eq 0 ]]
then
  echo "Password successfully implemented"
else
  echo "Password no implemented"
fi

# Force password change on first login.
passwd -e ${USERNAME}

# Display the username, password, and the host where the user was created.
HOST_NAM=$(hostname)

echo "Your Username is: ${USERNAME}"
echo "Your Password is: ${PASSWORD}"
echo "Your Hostname is: ${HOST_NAM}"
