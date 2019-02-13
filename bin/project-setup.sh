#!/bin/bash -e
# Application generator script.
read -p 'Name of project: ' project;
git clone --depth=1 git@github.com:tedjenkins/generator.git "$project";

cd "$project";
echo "Removing and re-initialising git repository...";
rm -rf .git;

git init;

echo "Done! You are now in project directory, remember to npm install!";
exec $SHELL;
