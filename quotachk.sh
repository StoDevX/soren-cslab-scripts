#!/bin/bash
echo ""
echo "Calling this script as 'quotachk.sh' is deprecated."
echo "Please use the new filename 'warn_quota' instead."
echo "Please update your ~/.cshrc or ~/.bashrc as appropriate."
echo ""

echo "$(date) :: $(whoami) :: called quotachk.sh" >> /home/users/bjornsta/bin/old_file_log.txt

/home/users/bjornsta/bin/warn_quota
