#!/bin/bash -e
# Bash script launcher, providing easy command-line access to all scripts in this directory.
SCRIPTLOCATION=$(dirname "$0");
echo "Bash script launcher";
echo "(c) 2019 George Pickering, MIT License";
echo;
echo "OPTIONS:";
echo "(0) Debug";
echo "(1) Project-setup (Jan 2019)";
echo "(2) Node-cmdline-project-setup (Node.js command-line scripting)";
read -p "Enter the number and press [ENTER]: " ANSWER;
if [ $ANSWER == 0 ]
  then echo "Nothing to debug"
elif [ $ANSWER == 1 ]
  then "$SCRIPTLOCATION/bin/project-setup.sh";
  exit;
elif [ $ANSWER == 2 ]
  then "$SCRIPTLOCATION/bin/node-cmdline-project-setup.sh";
  exit;
else
  echo "Invalid argument supplied"
fi
exec $SHELL;
