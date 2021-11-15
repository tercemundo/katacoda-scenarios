#!/bin/bash

# create guest user account
yum -y install passwd
useradd guest
useradd -m rhel

# create team group
groupadd team

# modify permissions on proprietary dir
chmod 640 /srv/proprietary
