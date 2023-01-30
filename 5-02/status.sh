#!/bin/bash
while true; do
    echo `date +%H:%H:%S`
    echo `cat /proc/loadavg`
    sleep 5
done
