#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh 

export SPEECHSYNTHETIZER_PID=$$


LOCAL_PLAY="$1"
LOCAL_ENGINE="$2"
LOCAL_LANGUAGE="$3"
LOCAL_TEXT="$4"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 4 ]; then

    if [ "$LOCAL_ENGINE" = "espeak" ]; then
        espeak.sh $LOCAL_LANGUAGE "${LOCAL_TEXT}"
    fi

    if [ "$LOCAL_PLAY" = "on" ]; then
        aplay $SPEECH_FILE
    #Stream to chromecast passing the device name in the local_play variable
    else
        $CHROMECAST_STREAM "$LOCAL_PLAY" "1.0" "$SPEECH_FILE"
    fi


else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
