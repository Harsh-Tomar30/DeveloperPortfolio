#!/bin/bash
# Author: Harsh Tomar
# Roll No: 2601730006
# Description: Prints a formatted system information report

echo "=============================================="
echo "  System Information Report"
echo "  Name: Harsh Tomar | Roll No: 2601730006"
echo "  Date: $(date)"
echo "=============================================="
echo ""

echo "--- CPU ---"
CPU_MODEL=$(lscpu | grep "Model name" | awk -F: '{print $2}' | sed 's/^ *//')
CPU_CORES=$(lscpu | grep "^CPU(s):" | awk '{print $2}')
echo "Model : $CPU_MODEL"
echo "Cores : $CPU_CORES"
echo ""

echo "--- Memory ---"
free -h | awk '/^Mem:/ {print "Total : " $2; print "Used  : " $3}'
echo ""

echo "--- Top 3 Processes by CPU Usage ---"
echo "USER       PID   %CPU  COMMAND"
ps aux | sort -nrk 3 | head -3 | awk '{print $1, $2, $3, $11}'
echo ""

echo "=============================================="
echo "  Report generated successfully."
echo "=============================================="
