#!/bin/bash

if [[ "${UID}" -ne 0 ]]
    then echo "You need to execute the script with root privileges."
    exit 1
fi

