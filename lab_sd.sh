#!/bin/bash

dir_name="lab$1"
path="$HOME/CLionProjects/SD"
mkdir $path/$dir_name
touch $path/$dir_name/ex1.cpp
clion $path &
