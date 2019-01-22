#!/bin/bash

### This script will stop an in-progress TM run when CCC job starts

# If TM is running, stop it
if [[ $(tmutil status | grep Running | xargs) == 'Running = 1;' ]]; then
	# Is running, stop
	tmutil stopbackup
	#sleep a few just to give TM a chance to put itself away
	sleep 30
fi

## TODO - Disable TM when we start and re-enable when we're done, in case TM starts while we're chooching?

exit 0