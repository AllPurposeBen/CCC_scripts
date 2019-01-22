#!/bin/bash

# If TM is running, stop it
if [[ $(tmutil status | grep Running | xargs) == 'Running = 1;' ]]; then
	# Is running, stop
	tmutil stopbackup
	#sleep a few just to give TM a chance to put itself away
	sleep 30
fi

exit 0