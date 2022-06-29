#!/usr/bin/env bash

if ! command -v python3 &> /dev/null
then
    echo "python not found please install"
    exit
fi
sudo apt-get install python3-distutils -y
# Install libfuse2 to use appimages
sudo apt-get install libfuse2
if ! command -v curl &> /dev/null
then
    echo "curl not found... attempting install"
    sudo apt-get install curl -y
fi
if ! command -v pip &> /dev/null
then
    echo "pip not found... installing..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py --user
    rm get-pip.py
fi

if ! command -v pip &> /dev/null
then
    echo "Installation of pip failed"
fi
python3 -m pip install --user ansible
if ! command -v ansible &> /dev/null
then
    echo "Installation of ansible failed"
    exit
else
    echo "Installation complete"
fi

