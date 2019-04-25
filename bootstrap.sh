#!/bin/sh

sudo -v
sudo apt install openssh-server ansible python-pycurl
ansible-playbook site.yml --tags "common" -i "localhost," -k
