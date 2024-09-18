#!/bin/bash

echo "Today" `date`

echo -e "\n Enter the path to the directory"
read path_to

echo -e "\n Directory contents"
ls -l $path_to