#!/bin/bash

sleep 120
sudo set-hostname -skip-apply ${component}
labauto ansible
ansible-pull -i localhost, -U https://github.com/paulpremkumar241122/roboshop-ansible.git main.yml -e role_name=${component} -e env=${env} &>>/opt/ansible.log