#!/bin/bash

#  This script creates an account on the local system.
#  You will be prompted for the account name and password.


# Ask for the Username
read -p 'Enter the username to create: ' USERNAME

# Ask for the real Name
read -p 'Enter the name to create: ' COMMENT

# Ask for the password
read -p 'Enter the password to create: ' PASSWORD

# Create the User
useradd -c "${COMMENT}" -m ${USERNAME}
# Set the password
echo ${PASSWORD} | passwd --stdin ${USERNAME}

# Force the user to change the password
passwd -e $USERNAME

# ============= Execution  =============
# [vagrant@localhost localusers]$ sudo ./luser-demo04.sh
# Enter the username to create: vpyepes
# Enter the name to create: Vanessa Perez
# Enter the password to create: vp1234
# Changing password for user vpyepes.
# passwd: all authentication tokens updated successfully.
# Expiring password for user vpyepes.
# passwd: Success
# [vagrant@localhost localusers]$ su vpyepes
# Password:
# You are required to change your password immediately (root enforced)
# Changing password for vpyepes.
# (current) UNIX password:
# su: Authentication token manipulation error
# [vagrant@localhost localusers]$
# [vagrant@localhost localusers]$
# ======================================
