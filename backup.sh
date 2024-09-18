#!/bin/bash

# Проверка, передан ли аргумент
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh directory"
    exit 1
fi


# Проверка, существует ли директория
if [ -d "$1" ]; then
    for file in "$1"/*; do
        # Получение имени файла без пути
        base=$(basename "$file")
        # Копирование файла с добавлением суффикса .bak
        cp "$file" "$1/${base}.bak"
        echo "Backup created for $file"
    done
else
    echo "Directory $1 does not exist."
    exit 1
fi