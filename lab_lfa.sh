#!/bin/bash

dir_name="lab$1"
path="$HOME/PycharmProjects/LFA"
firefox https://teams.microsoft.com/l/channel/19%3aTaDDLHDX2fMMA5116S1kg3RHyURFU9AGtTxIBoJQBdc1%40thread.tacv2/General?groupId=d1ecc8b2-e547-4f5a-9c02-d9430b4c2bdd &
mkdir $path/$dir_name
touch $path/$dir_name/note.ipynb
touch $path/$dir_name/ex1.py
pycharm $path &
