#!/bin/bash -e
# Application generator script for command-line applications running on Node.js.
if ! [ -x "$(command -v node)" ]
  then echo "ERROR: Node does not exist or cannot be recognised on this machine.";
else
  read -p 'Name of project: ' project;
  git clone --depth=1 git@github.com:tedjenkins/node-cmdline-project-generator.git "$project";

  cd "$project";
  echo "Removing and re-initialising git repository...";
  rm -rf .git;

  git init;
  git config --local user.name "George Pickering";
  git config --local user.email 29524044+tedjenkins@users.noreply.github.com;

  echo "Done! You are now in project directory, remember to npm install!";
fi

exec $SHELL;