#!/bin/bash

dir_name="lab$1"
path="$HOME/WebstormProjects/TW"
boilerplate_html='<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <title>Hello, world!</title>
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="description" content="" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="icon" href="favicon.png">
  </head>
  <body>
    <script src="index.js"></script>
  </body>
</html>'

mkdir $path/$dir_name
touch $path/$dir_name/home.html
touch $path/$dir_name/style.css
touch $path/$dir_name/index.js
echo "$boilerplate_html" >> $path/$dir_name/home.html
firefox https://cs.unibuc.ro/~cechirita/tw/ &
webstorm $path &
