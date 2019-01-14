#!/bin/bash
# Application generator script.
git clone --depth=1 https://github.com/tedjenkins/generator.git generated-app
cd generated-app
echo "Removing and re-initialising git repository..."
rm -rf .git
git init
git config --local user.name tedjenkins
git config --local user.email 29524044+tedjenkins@users.noreply.github.com
echo "Done! You are now in project directory, remember to npm install!"
$SHELL
