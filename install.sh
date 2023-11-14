#!/bin/bash
if [ $UID == '0' ]
  then
  if [ -e $'run' ] || [ -e $'op' ]
    then
    mv run /bin &>/dev/null
    if [ $? == '0' ]
     then
     echo "Run script installed."
     mv op /bin &>/dev/null
     if [ $? == '0' ]
     then 
      echo  "Open script installed."
      else 
      echo "op script is not present in this folder."
     fi 
    fi
    else
    echo "Make sure you have your run script in this folder."
  fi
    else
    echo "Execute this as a root user."
fi

   
    
   
   
