#!/bin/bash

IFS=: read -a commands <<< $CMD

for cmd in "${commands[@]}"
do
    read -p ">>> press <enter> to execute (${cmd}) "
    echo -e ">>> pirate (${cmd}):" >> $LOG_FILE
    eval ${cmd} | tee -a $LOG_FILE
done