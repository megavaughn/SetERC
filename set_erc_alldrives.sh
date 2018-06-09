#!/bin/bash

drives=$(smartctl --scan)

while read -r line; do
    currDrive=$(echo $line | awk '{print $1;}')
    smartctl -l scterc,70,70 $currDrive
done <<< "$drives"
