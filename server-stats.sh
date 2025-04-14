#!/bin/bash

top -bn1 | grep "Cpu(s)" > output.txt  

# Extract memory usage and calculate percentages
free -h -t | awk '/^Mem:/ {
    total=$2; used=$3; free=$4;
    used_percent=($3/$2)*100;
    free_percent=($4/$2)*100;
    printf "Memory Usage: Total: %s, Used: %s (%.2f%%), Free: %s (%.2f%%)\n", total, used, used_percent, free, free_percent;
}' >> output.txt

#df -h -T | grep "Filesystem" >> output.txt