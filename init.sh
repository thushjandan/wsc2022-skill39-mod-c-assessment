#!/bin/bash

[[ -f "/data/ansible/linux/7-users.yml" ]] || (
    echo "The 7-users.yml doesn't exist, creating the dependency.";
    echo "---" > /data/ansible/linux/7-users.yml;
    echo "- tasks:" >> /data/ansible/linux/7-users.yml;
    echo "  hosts: localhost" >> /data/ansible/linux/7-users.yml;
)

[[ -f "/data/ansible/cisco/8-backup.yml" ]] || (
    echo "The 8-backup.yml doesn't exist, creating the dependency." ;
    echo "---" > /data/ansible/cisco/8-backup.yml;
    echo "- tasks:" >> /data/ansible/cisco/8-backup.yml;
    echo "  hosts: localhost" >> /data/ansible/cisco/8-backup.yml;
)

cp /etc/ansible/hosts /etc/ansible/hosts.bkp
cp ./hosts /etc/ansible/hosts