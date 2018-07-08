# List signals
kill -l
trap -l
# List key shortcuts
stty -a

# O EXIT The shell exists
# 1 SIGHUP The terminal has been disconnected (SIGNAL HANG UP)
# 2 SIGINT  Termination (^C)
# 3 SIGQUIT (^\)
# 4 SIGILL Illegal hardware instruction
# 5 SIGTRAP Debugger signal
# 8 SIGFPE Floating point error (division by zero)
# 9 SIGKILL Die instantly

kill -9 1234
kill -SIGKILL 1234

# Use trap to respond to a (or more) signal in a script
trap "command" SIGINT SIGHUP # Beware of quotes ' or " to set when variable substitution is done
trap " " SIGINT # Remove default behavior, do nothing
trap SIGINT # Reset default behavior

# Run as process imune to hangups
nohup ./myfile.sh &
nohup mycmd &

# Dialog
dialog --title "My title" --msgbox "Message..." 10 50
dialog --yesno
# etc...
