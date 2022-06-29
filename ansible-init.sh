#!/usr/bin/env bash

if ! command -v python3 &> /dev/null
then
    echo "python not found please install"
    exit
fi
if ! command -v pip &> /dev/null
then
    echo "pip not found... installing...\n"
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py --user
    rm get-pip.py
fi

python3 -m pip install --user ansible
if ! command -v ansible &> /dev/null
then
    echo "Installation of ansible failed"
    exit
else
    echo "Installation complete"
fi

