#!/bin/bash
sites=( "www.cnn.com" "www.cnbc.com" "www.bbc.com" "www.wikipedia.org" "www.fox.com" "www.imdb.com" "www.google.com" "www.amazon.com" )

LOG=/tmp/traffic.log

while true; do
  date >> $LOG
  for s in "${sites[@]}"; do
    echo $s >> $LOG
    curl -# --head https://$s > /dev/null 2>>$LOG
  done
  sleep 2
  tail -100 $LOG > $LOG.tmp
  mv -f $LOG.tmp $LOG
done
