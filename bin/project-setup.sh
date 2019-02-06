#!/bin/bash -e
# Application generator script.
read -p 'Name of project: ' project;
git clone --depth=1 https://github.com/tedjenkins/generator.git "$project";

cd "$project";
echo "Removing and re-initialising git repository...";
rm -rf .git;

git init;
git config --local user.name "George Pickering";
git config --local user.email 29524044+tedjenkins@users.noreply.github.com;

echo "Done! You are now in project directory, remember to npm install!";
exec $SHELL;