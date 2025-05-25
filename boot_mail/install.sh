#!/bin/bash

cp files/boot-mail.sh .
sudo cp files/boot-mail /etc/init.d/
sudo update-rc.d boot-mail defaults
