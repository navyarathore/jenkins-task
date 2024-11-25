#!/bin/bash

echo "Disk usage:"
df | tail -1 | awk '{print $5}' | sed 's/%//'
