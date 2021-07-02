#!/bin/bash
# https://wiki.pine64.org/wiki/PineTime_FAQ#How_do_I_set_the_time_on_PineTime.3F
#  <lsb of year> <msb of year> <month (1-12)> <day (1-31)> <hour (0-23)> <minute (0-59)> <seconds (0-59)> <weekday (1-7 where 1=Monday)> <fractions (1/256th of second)>
# it seems like you could just leave the last 3 values as 0x00
year=$(printf "%04X\n" $(date +"%Y"))
msb=${year:0:${#year}/2}
lsb=${year:${#year}/2}
printf "0x$lsb 0x$msb 0x%02x 0x%02x 0x%02x 0x%02x 0x00 0x00 0x00\n" $(date +"%m %d %H %M")
