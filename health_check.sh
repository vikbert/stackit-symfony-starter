#!/bin/bash

maxTries=60
tries=0;
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost/healthcheck)" != "200" && $tries -lt maxTries ]];
do
  ((++tries));
  echo "Health check $tries failed"
  sleep 5;
done
