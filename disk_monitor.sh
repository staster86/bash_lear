#!/bin/bash

function get_disk_usage() {
    df -h | grep "^/dev"
}

function check_disk_usage() {
    local usage=$1
    local threshold=$2
    #Clear % and check threshold
    if [ ${usage%?} -gt $threshold ]; then
        return 0
    else
        return 1
    fi
}

function send_alert() {
    local partition=$1
    local usage=$2
    local log_file="/var/log/disk_monitor.log"
    echo "ALERT! partiton $partition busy $usage" | tee -a "$log_file"
}

function monitor_disks() {
    local threshold=${1:-80}  # Порог по умолчанию 80%, если не передан аргумент
    get_disk_usage | while read -r line; do
        partition=$(echo $line | awk '{print $1}')
        usage=$(echo $line | awk '{print $5}')
        
        check_disk_usage "$usage" "$threshold"
        if [ $? -eq 0 ]; then
            send_alert "$partition" "$usage"
        fi
    done
}

monitor_disks "$1"