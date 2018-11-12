#!/bin/bash

IFS=: read -a commands <<< $CMD

for cmd in "${commands[@]}"
do
    read -p ">>> press <enter> to execute (${cmd}) "
    echo -e ">>> machine_1 (${cmd}):" >> $LOG_FILE
    eval ${cmd} | tee -a $LOG_FILE
done