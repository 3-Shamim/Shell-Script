#!/bin/bash

echo "########### connecting to server and run commands in sequence ###########"

# Create file in server
# ssh root@159.89.166.107 'touch a.txt; touch b.txt; cat a.txt; cat b.txt'

# Access multiple server with loop
# USERNAME=root
# # HOSTS="host1 host2 host3"
# HOSTS="159.89.166.107"
# SCRIPT="pwd; ls"
# for HOSTNAME in ${HOSTS} ; do
#     ssh -l ${USERNAME} ${HOSTNAME} "${SCRIPT}"
# done

# Access server and attach
ssh -D 1500 root@159.89.166.107
expect "Echo of after ssh -D 1500 user@host"
send yourpassword\r
wait
