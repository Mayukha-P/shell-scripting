#! bin/bash
echo "the script name you are running is:" $0
echo " The first argument is" $1
echo "The second argument is:" $2
echo "The arguments are:" $*
echo "The no.of args are:" $#
echo "exit code of previous command is:" $?
echo "the PID of process is:" $$