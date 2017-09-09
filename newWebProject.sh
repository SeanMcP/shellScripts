#!/bin/zsh

# Simple program to create file directory

echo 'Project Name'

read projectName

echo 'Description'

read briefDescription

mkdir $projectName && cd $projectName

mkdir css && echo '/* http://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed,
figure, figcaption, footer, header, hgroup,
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
/********* END RESET CSS *********/

body {

}

/********* FOOTER STYLE *********/

footer {
	align-items: center;
	background: #333;
	position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
	box-shadow: 0 0 8px rgba(0, 0, 0, 0.6);
	display: flex;
	justify-content: center;
	text-align: center;
	width: 100%;
}
footer a {
	color: rgba(255, 255, 255, 0.4);
	text-decoration: none;
}
footer img {
	height: 20px;
	margin: 10px 0 7px;
	opacity: 0.25;
}
footer img:hover {
	opacity: 0.5;
}
footer img:active {
	opacity: 0.3;
}' > css/main.css

mkdir img js && touch js/main.js

echo '<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,user-scalable=no">
    <title>'$projectName'</title>
    <meta name="description" content="'$briefDescription'">
    <meta name="keywords" content="">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="./css/main.css" type="text/css"/>
    <link rel="icon" href="./img/favicon.png">
  </head>
  <body>

    <footer id="mainFooter"><a href="http://seanmcp.com"><img src="./img/logo-whiteout.png" alt="&copy; Sean McPherson" title ="&copy; Sean McPherson"/></a>
    </footer>
    <script src="./js/main.js"></script>
  </body>
</html>' > index.html

echo '# '$projectName'

'$briefDescription'' > README.md

# atom .
