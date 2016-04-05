#!/bin/bash
echo "Calling this script as 'timerTable.sh' is deprecated."
echo "Please use the new filename 'timer_table' instead."
echo ""
echo "$(date) :: $(whoami) :: called timer_table.sh" >> /home/users/bjornsta/bin/old_file_log.txt

/home/users/bjornsta/bin/timer_table $*
