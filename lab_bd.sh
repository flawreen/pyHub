#!/bin/bash

dir_name="lab$1"
path="$HOME/DataGripProjects/BD"
firefox https://teams.microsoft.com/l/channel/19%3a9Sbj4xl4wzxyVb1QkOzMjmRmWYOCCDwh0_awqBj4N041%40thread.tacv2/General?groupId=087ee5d2-0375-498b-835b-0b303048e2f1&tenantId=08a1a72f-fecd-4dae-8cec-471a2fb7c2f1 &
mkdir $path/$dir_name
touch $path/"$dir_name.sql"
datagrip $path &
