#!/bin/zsh

# Simple program to create file directory

echo 'Project Name'

read projectName

mkdir $projectName && cd $projectName

mkdir css && echo 'body {\n\t\n}' > css/main.css

mkdir js && touch js/main.js

echo '<!DOCTYPE html>\n<html>\n\t<head>\n\t\t<title></title>\n\t\t<link rel="stylesheet" href="./css/main.css" type="text/css"/>\n\t</head>\n\t<body>\n\t\t\n\t\t<script src="./js/main.js"></script>\n\t</body>\n</html>' > index.html

echo '# README' > README.md

# atom .
