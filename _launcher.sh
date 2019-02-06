#!/bin/bash -e
# Bash script launcher, providing easy command-line access to all scripts in this directory.
SCRIPTLOCATION=$(dirname "$0");
echo "Bash script launcher";
echo "(c) 2019 George Pickering, MIT License";
echo;
echo "OPTIONS:";
echo "(0) Debug";
echo "(1) Project-setup (Jan 2019)";
read -p "Enter the number and press [ENTER]: " ANSWER;
if [ "$ANSWER" == 0 ]
  then echo "Nothing to debug"
elif [ "$ANSWER" == 1 ]
  then "$SCRIPTLOCATION/project-setup.sh";
  exit;
else
  echo "Invalid argument supplied"
fi
exec $SHELL;
