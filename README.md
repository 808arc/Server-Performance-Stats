https://roadmap.sh/projects/server-stats
# Server Performance Stats Script

## Overview

`server-stats.sh` is a simple shell script to analyze and report basic server performance statistics on any Linux system. It collects and logs system metrics such as CPU usage, memory usage, disk usage, and top resource-consuming processes.

## Features

- ✅ Total CPU usage
- ✅ Total memory usage (Free vs Used, including percentage)
- ✅ Total disk usage (Free vs Used, including percentage)
- ✅ Top 5 processes by CPU usage
- ✅ Top 5 processes by memory usage
- 🏆 (Stretch goal-ready) Easily extendable to include:
  - OS version
  - System uptime
  - Load averages
  - Logged-in users
  - Failed login attempts

## Usage

1. Clone or download the script.

2. Make the script executable:

```
  chmod +x server-stats.sh
```

3. Run the script:

```
./server-stats.sh
```

4. The results will be saved to a file called 'stats.txt' in the same directory.

Example Output:

```
Total CPU: 3.5%

Total MEM: Total: 7986MB Used: 4231MB Free: 3755MB

Total DISK: Used: 12G, Free: 88G, Usage: 12%

Top 5 CPU Processes:
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
  ...

Top 5 MEM Processes:
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND
...
```

