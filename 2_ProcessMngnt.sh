#! /bin/bash
exit
# List processes
ps -ef
# Show process tree
pstree
ps -lf
# Kill processes by id
kill num_pid
kill -9 num_pid #9 = SIGKILL
# Kill processes by name
pkill proc_name
pkill -9 proc_name
# Start process in the background
sleep 10000 &
# Show processes running in the background
jobs -l # [jobID]
# + => current job, - => previous job
fg jobspec # Resume given job or current job in foreground
bg jobspec # Resume given job in the background
# jobspec => %job_id
# current jib : % or %% or %+, previous job: %-
# CTRL+Z: stops a processs, SIGTSTP
# CTRL+Q: interrupts a process, SIGINT
# CTRL+\: quits a process (interrupts and core dump=, SIGQUIT

# Show current processes in real-time update
top
# CPU and disk usage
iostat # sysstat package
iostat -c
iostat -d
# Virtual memory
vmstat
vmstat -s
vmstat -t 1 5 # Display stats 5 times after 1 second
# CPU activity
sar -u 2 3 # 3 times every 2 secondes

# at, crontab, systemd timers
# at 11.15 AM
# atq
# atrm job-id

#crontab -e
