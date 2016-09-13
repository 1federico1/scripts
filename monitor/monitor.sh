#!/bin/bash
#stats monitor
#meglio usare script awk
watch '(lscpu|grep MHz; sensors; free; df -h) |
awk -f output.awk '
