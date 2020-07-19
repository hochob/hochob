#!/bin/sh

#https://linux.die.net/man/1/feh

# =============================================================================
# Variables
# =============================================================================

export FEH_PID=$$
export FEH_BINARY=feh
export FEH_FULLSCREEN_ARGUMENT="-F -Y -Z"
export FEH_SLIDESHOW_ARGUMENT="-z -D 5"


LOCAL_FILES="$1"

# =============================================================================
# Functions
# =============================================================================
#feh outfile.jpeg &     # run process in background
#pid=$!                 # obtain PID of last backgrounded process
#sleep 10               
#kill $pid   
# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    killall $FEH_BINARY
    if [ -d "${LOCAL_FILES}" ]; then
        $FEH_BINARY $FEH_FULLSCREEN_ARGUMENT $FEH_SLIDESHOW_ARGUMENT $LOCAL_FILES &
    elif [ -f "${LOCAL_FILES}" ]; then
        $FEH_BINARY $FEH_FULLSCREEN_ARGUMENT $LOCAL_FILES &        
    fi
    sleep 30
    killall $FEH_BINARY
    
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of file
