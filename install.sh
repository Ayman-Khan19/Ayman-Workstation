#!/bin/bash

echo "===================================="
echo " Cloud/DevOps Workstation Bootstrap "
echo "===================================="

sudo apt update

while read package
do
    if [[ ! -z "$package" ]]; then
        sudo apt install -y "$package"
    fi
done < packages.txt

echo ""
echo "Installation Finished."

