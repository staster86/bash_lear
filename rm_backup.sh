#!/bin/bash

echo "Your want to delete all file .bak in current directory, enter yes and no: ?"
read choise

if [ -z "$choise" ]; then
    echo "Enter yes and no!"
    exit 1
fi

# Проверка, существует ли директория
if [ -d "$1" ]; then
    for file in "$1"/*.bak; do
        if [ -e "$file" ]; then # Проверка, существует ли файл
            rm "$file"
            echo "Deleted: $file"
        fi
    done
else
    echo "Directory $1 does not exist."
    exit 1
fi