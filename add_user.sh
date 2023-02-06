#!/bin/bash

if [[ "$UID" -ne 0 ]]
    then echo "You need to execute the script with root privileges."
    exit 1
fi

read -p "Provide a username: " USERNAME
read -p "Provide an initial password: " PASSWORD

useradd -ms /bin/bash "${USERNAME}"

if [[ "$?" -ne 0 ]]
then
    echo "The script was not able to create a user ${USERNAME}."
    exit 1
fi

