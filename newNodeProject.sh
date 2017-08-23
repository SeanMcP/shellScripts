#!/bin/zsh

# Simple program to create file directory for Node.js projects

echo 'Project Name:'

read projectName

mkdir $projectName && cd $projectName

mkdir public && touch public/main.css

mkdir views && touch views/layout.mustache views/index.mustache

mkdir routes && touch routes/index.js

mkdir models && touch models/index.js

echo 'node_modules/' > .gitignore

echo '<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="main.css">
  </head>
  <body>
    <div class="container">
      {{{yield}}}
    </div>
  </body>
</html>' >> views/layout.mustache

echo '<h1>Index.mustache</h1>' >> views/index.mustache

echo 'const express = require('express')
const mustacheExpress = require('mustache-express')
const path = require('path')
const routes = require('./routes/index')
const morgan = require('morgan')

const app = express()

app.use(express.static(path.join(__dirname, 'public')))

app.engine('mustache', mustacheExpress())
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'mustache')
app.set('layout', 'layout')

app.use(routes)

app.use(morgan('dev'))

app.listen(3000, function() {
  console.log('App is running on localhost:3000');
})' > server.js

echo 'const express = require('express')
const router = express.Router()

router.get('/', function(req, res) {
  res.render('index')
})

module.exports = router' >> routes/index.js

echo '# README' > README.md

npm init -y

npm install --save express mustache mustache-express path morgan
