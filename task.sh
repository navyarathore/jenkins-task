#!/bin/bash

echo "Disk usage"

disk_usage=$(df | tail -1 | awk '{print $5}' | sed 's/%//')

if [ $disk_usage -gt 80 ]; then
	echo "Disk utilization is above 80%"
else
	echo "Disk utilization is under 80%"
fi
