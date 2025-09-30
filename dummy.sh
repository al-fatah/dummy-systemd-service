#!/bin/bash

while true; do
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Dummy service is running..." >> /var/log/dummy-service.log
  sleep 10
done

