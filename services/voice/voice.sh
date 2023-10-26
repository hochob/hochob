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

LOCAL_APLAY_ARGUMENTS="-D pulse"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 4 ]; then

    case "$LOCAL_PLAY" in
        "on")
            #Plays voice at local device
            if [ "$LOCAL_ENGINE" = "espeak" ]; then
                espeak.sh $LOCAL_LANGUAGE "${LOCAL_TEXT}"
            fi
            aplay $LOCAL_APLAY_ARGUMENTS $SPEECH_FILE
            ;;
        "amikoo")
            #Send HTTP POST to TTS URL
            curl.sh "${LOCAL_TEXT}"
            ;;
        *) 
            #Look for chromecast device name
            if [ "$LOCAL_ENGINE" = "espeak" ]; then
              espeak.sh $LOCAL_LANGUAGE "${LOCAL_TEXT}"
            fi
            $CHROMECAST_STREAM "$LOCAL_PLAY" "0.3" "$SPEECH_FILE"
            ;;
    esac


else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
