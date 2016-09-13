#!/bin/bash
#stats monitor

watch '(lscpu|grep MHz;cat /sys/class/thermal/thermal_zone0/temp; free -h; df -h) | awk -f output.awk '
