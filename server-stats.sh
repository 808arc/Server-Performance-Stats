#!/bin/bash

cpu_usage(){
    top -bn1 | grep 'Cpu(s)' | awk '{print $2"%"}'
}


mem_usage(){
    free -m | grep "Mem" | awk '{print "Total: " $2"MB" , "Used: " $3"MB", "Free: "$4"MB"}'
}



disk_usage(){
    df -h --total | grep "total" | awk '{print "Used: "$3", Free: "$4", Usage: "$5}'
}

cpu_usage_top5(){
    top -bn1 -o %CPU | head -n 12 | tail -n 6
}

mem_usage_top5(){
    top -bn1 -o %MEM | head -n 12 | tail -n 6
}
{
    echo -e "Total CPU: $(cpu_usage)\n"
    echo -e "Total MEM: $(mem_usage)\n"
    echo -e "Total DISK: $(disk_usage)\n"
    echo -e "Top 5 CPU Processes:\n$(cpu_usage_top5)\n"
    echo -e "Top 5 MEM Processes:\n$(mem_usage_top5)\n"
} >> stats.txt