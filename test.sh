#!/bin/bash

if (curl -s http://127.0.0.1:8000 | grep "Hello getintodevops.com")
  then
    echo "docker image working"
    exit 1
  else
    echo "docker image not working" 
    exit 0
fi
