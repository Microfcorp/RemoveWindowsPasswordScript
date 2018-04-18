#!/bin/bash

echo Heloy User. This script is deleting password for user Windows
echo
echo
 
if [  "$1" == "install" ]
then
echo Installing packeges.
apt-get install chntpw
fi

if [  "$1" == "help" ]
then
echo install as intaling packeges.
echo help as helping.
echo setasuser \(/windows/system32/config\) as see istalling users in Windows.
echo removepassw \(/windows/system32/config\) \(users RID\) as see config users menu.
fi

if [  "$1" == "setasuser" ]
then
if [ -n "$2" ]
  then
  cd "$2"
  else
  echo "No parameters found. "
  exit 
 fi

chntpw -l SAM
fi
if [ "$1" == "removepassw" ]
then
  if [ -n "$2" ]
  then
  cd "$2"
  else
  echo "No parameters found. "
  exit
fi

  if [ -n "$3" ]
  then
  chntpw -u 0x"$3" SAM
  else
  echo "No parameters found. "
  exit 
fi
fi
