#!/bin/bash

CSEC=`date |awk -F ':' '{ print $NF }'`
DINGO=`expr $CSEC % 2`
#echo "CSEC: $CSEC"
#echo "DINGO: $DINGO"

if [ "$DINGO" = "0" ]
then
  echo " euh... Non! Pas envie!"
  exit 1
fi

