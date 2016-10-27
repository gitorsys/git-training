#!/bin/bash

CSEC=`date |awk -F ':' '{ print $NF }'`
DINGO=`expr $CSEC % 2`
#echo "CSEC: $CSEC"
#echo "DINGO: $DINGO"

if [ "$DINGO" = "0" ]
then
  exit 1
fi

