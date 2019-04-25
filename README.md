# ansible-ubuntu

This is a personal installation playbook to install Ubuntu GNOME development environment to my liking.

I do not recommend using it as-is, fork and make your changes before using it. You've been warned!

Tested on Bionic with Ansible 2.7.10.

## Dependencies

If you are running locally onto a fresh install, there are a few dependencies:

    $ sudo apt install openssh-server sshpass ansible python-pycurl apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    $ sudo systemctl start sshd

## Tags

* **common**: common installation (haveged, docker, htop, etc...)
[(pkgs)](https://github.com/edgard/ansible-ubuntu/blob/master/roles/common/vars/main.yml)  [(tasks)](https://github.com/edgard/ansible-ubuntu/blob/master/roles/common/tasks/main.yml)
* **desktop**: base + desktop config (chrome, themes, devel, etc...)
[(pkgs)](https://github.com/edgard/ansible-ubuntu/blob/master/roles/desktop/vars/main.yml) [(tasks)](https://github.com/edgard/ansible-ubuntu/blob/master/roles/desktop/tasks/main.yml)

## Example run

    ansible-playbook site.yml --tags "common" -i "localhost," -k

**IMPORTANT: DO NOT FORGET THE COMMA AFTER THE HOST**
