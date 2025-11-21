#!/bin/bash

# Architecture
ARCHITECTURE=$(uname -a)

# CPU physical
CPU_PHYSICAL=$(grep "physical id" /proc/cpuinfo | sort -u | wc -l)

# vCPU
vCPU=$(grep -c processor /proc/cpuinfo)

# Memory Usage
MEM_USED=$(free --mega | grep Mem: | awk '{printf $3}')
MEM_TOTAL=$(free --mega | grep Mem: | awk '{printf $2}')
MEM_USAGE=$(awk -v used="$MEM_USED" -v total="$MEM_TOTAL" 'BEGIN {printf "%d/%dMB (%.2f%%)", used, total, (used/total)*100}')

# Disk Usage
DISK_USED=$(df -BM | grep "^/dev" | awk '{sum += $3} END {printf "%d", sum}')
DISK_TOTAL=$(df -BM | grep "^/dev" | awk '{sum += $2} END {printf "%d", sum}')
DISK_USAGE=$(awk -v used="$DISK_USED" -v total="$DISK_TOTAL" 'BEGIN {printf "%d/%dGb (%.2f%%)", used, (total/1024), (used / total) * 100}')

# CPU load
CPU_LOAD=$(top -bn1 | grep "%Cpu(s)" | grep -o '[0-9.]* id' | awk '{printf "%.1f%%", 100 - $1}')

# Last boot
LAST_BOOT=$(who -b | awk '{printf "%s %s", $3, $4}')

# LVM use
LVM_USE=$( [ $(lsblk | grep -c lvm) -gt 0 ] && echo "yes" || "no")

# Connections TCP
CONNECTIONS_TCP=$(ss -ta | grep -c ESTAB)

# User log
USER_LOG=$(who -u | awk '{print $1}'| sort -u | wc -l) 

# Network
NET_HOST_IP=$(hostname -I)
NET_MAC_ADDRESS=$(ip link show | grep "link/ether" | awk '{printf $2}')

# SUDO
COUNT_SUDO=$(journalctl -q _COMM=sudo | grep -c "COMMAND")

wall "
	#Architecture: $ARCHITECTURE
	#CPU physical : $CPU_PHYSICAL
	#vCPU : $vCPU 
	#Memory Usage: $MEM_USAGE 
	#Disk Usage: $DISK_USAGE
	#CPU load: $CPU_LOAD
	#Last boot: $LAST_BOOT 
	#LVM use: $LVM_USE
	#Connections TCP : $CONNECTIONS_TCP ESTABLISHED 
	#User log: $USER_LOG
	#Network: IP $NET_HOST_IP ($NET_MAC_ADDRESS)
	#Sudo : $COUNT_SUDO cmd 
"
