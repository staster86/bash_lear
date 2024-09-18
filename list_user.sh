#!/bin/bash

function list_original() {
    cat /etc/passwd
}

function sort_list() {
   list_original | cut -d':' -f1
}
