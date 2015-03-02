#!/bin/bash

echo "Setting up meteor boilerplate"
meteor create $1
cd $1

rm $1.*
meteor remove autopublish insecure

mkdir client lib private public server
mkdir client/compatibility client/helpers client/stylesheets client/templates
mkdir client/templates/application client/templates/includes
mkdir lib/collections
mkdir public/images

touch client/main.html client/main.js
touch lib/permissions.js lib/router.js
touch server/fixtures.js server/publications.js

cat >.gitignore <<EOL
# Created by https://www.gitignore.io

### Meteor ###
.meteor/local
.meteor/meteorite


### Node ###
# Logs
logs
*.log

# Runtime data
pids
*.pid
*.seed

# Directory for instrumented libs generated by jscoverage/JSCover
lib-cov

# Coverage directory used by tools like istanbul
coverage

# Grunt intermediate storage (http://gruntjs.com/creating-plugins#storing-task-files)
.grunt

# node-waf configuration
.lock-wscript

# Compiled binary addons (http://nodejs.org/api/addons.html)
build/Release

# Dependency directory
# https://www.npmjs.org/doc/misc/npm-faq.html#should-i-check-my-node_modules-folder-into-git
node_modules


### OSX ###
.DS_Store
.AppleDouble
.LSOverride

# Icon must end with two \r
Icon


# Thumbnails
._*

# Files that might appear on external disk
.Spotlight-V100
.Trashes

# Directories potentially created on remote AFP share
.AppleDB
.AppleDesktop
Network Trash Folder
Temporary Items
.apdisk


### Sass ###
.sass-cache
*.css.map

EOL