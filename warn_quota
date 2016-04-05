#!/bin/bash
# %%% Check to make sure user is not close to their disk quota.
# By default we will warn if the user is using more than 85% of their quota;
# this can be customized with an environment variable.

if [ -z "$QUOTA_WARNING_THRESHOLD" ]; then
    qwt=85
else
    qwt=$QUOTA_WARNING_THRESHOLD
fi

quotavals=$(quota | tail -n 1 | column -t)
using=$(echo "$quotavals" | cut -d ' ' -f 1)
total=$(echo "$quotavals" | cut -d ' ' -f 5)
percent=$(echo "100 * $using / $total" | bc -q)

if [ $percent -ge $qwt ]; then
    echo -e "\e[1;31mQUOTA WARNING:\e[0m \e[1;33mYou are using $percent% of your quota!\e[0m"
    if [ -z "$QUOTA_WARNING_THRESHOLD" ]; then
        cat <<EOM
(If you'd prefer not to see this message until you reach a higher percentage
utilization, set the environment variable QUOTA_WARNING_THRESHOLD to the
integer percentage you'd like to trigger the message.)
EOM
    fi
fi
