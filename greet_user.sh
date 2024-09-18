#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: No name provided. Usage: ./greet_user.sh [name]"
  exit 1
else
  echo "Hello, $1!"
fi