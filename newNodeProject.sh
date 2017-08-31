#!/bin/zsh

# Simple program to create file directory for Node.js projects

echo 'Project Name:'

read projectName

mkdir $projectName && cd $projectName

mkdir views routes public models

touch public/main.css

echo 'node_modules/' > .gitignore

echo '<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>'$projectName'</title>
    <link rel="stylesheet" href="main.css">
  </head>
  <body>
    <div class="container">
      {{{yield}}}
    </div>
  </body>
</html>' > views/layout.mustache

echo '<p>Hello, from index.mustache</p>' > views/index.mustache

echo "const express = require('express')
const mustacheExpress = require('mustache-express')
const bodyParser = require('body-parser')
const path = require('path')
const routes = require('./routes/index')
const morgan = require('morgan')

const app = express()

app.use(express.static(path.join(__dirname, 'public')))

app.engine('mustache', mustacheExpress())
app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'mustache')
app.set('layout', 'layout')

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended: false}))

app.use(routes)

app.use(morgan('dev'))

app.listen(3000, function() {
  console.log('App is running on localhost:3000');
})" > server.js

echo "const express = require('express')
const router = express.Router()

router.get('/', function(req, res) {
  res.render('index')
})

module.exports = router" > routes/index.js

echo '# '$projectName'' > README.md

npm init -y

npm install --save express mustache mustache-express path morgan body-parser
