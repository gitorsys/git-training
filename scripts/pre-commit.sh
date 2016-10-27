DAYOFWEEK=$(date +"%u")
if [ "$DAYOFWEEK" == 5 ];  then echo "you shall not commit on friday !"; exit 1; else  exit 0; fi


