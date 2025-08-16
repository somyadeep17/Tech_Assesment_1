#!/bin/bash
LOG="logs/process_$(date +%F_%H-%M-%S).log"
mkdir -p logs
ps aux > $LOG
MEM_THRESHOLD=500000
HIGH_MEM=$(ps -eo pid,pmem,comm --sort=-pmem | awk 'NR==2 {print $2}')
if (( ${HIGH_MEM%.*} > MEM_THRESHOLD )); then
echo "WARNING: High memory usage detected: $HIGH_MEM%" >>$LOG
fi
echo "Log saved to $LOG"
