#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export STREAM_PID=$$
export STREAM2CHROMECAST_PYTHON_BINARY=/usr/bin/python2.7 
export STREAM2CHROMECAST_BINARY=/services/streaming/stream2chromecast/stream2chromecast.py
export STREAM2CHROMECAST_ARGUMENT_SELECT_DEVICE="-devicename"
export STREAM2CHROMECAST_ARGUMENT_VOLUME="-setvol"
export STREAM2CHROMECAST_ARGUMENT_STOP="-stop"

LOCAL_DEVICE="$1"
LOCAL_VOLUME="$2"
LOCAL_FILE="$3"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 3 ]
then
    
    #Set volume in the selected device
    
    $STREAM2CHROMECAST_PYTHON_BINARY $STREAM2CHROMECAST_BINARY $STREAM2CHROMECAST_ARGUMENT_SELECT_DEVICE "$LOCAL_DEVICE" $STREAM2CHROMECAST_ARGUMENT_VOLUME $LOCAL_VOLUME
                              

    #Play the media file in the selected device
    
    $STREAM2CHROMECAST_PYTHON_BINARY $STREAM2CHROMECAST_BINARY $STREAM2CHROMECAST_ARGUMENT_SELECT_DEVICE "$LOCAL_DEVICE" $LOCAL_FILE
                            

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

exit 0

# =============================================================================
# Sandbox
# =============================================================================


# End of File
