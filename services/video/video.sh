#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export MPV_PID=$$
export MPV_BINARY=mpv
export MPV_ARGUMENTS="--audio-device=alsa --fs --keep-open=yes "
export MPV_LOOP="--loop"

LOCAL_LOOP="$1"
LOCAL_FILE="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    killall $MPV_BINARY
    if [ "$LOCAL_LOOP" = "on" ]; then
        $MPV_BINARY $MPV_ARGUMENTS $MPV_LOOP $LOCAL_FILE
    elif [ "$LOCAL_LOOP" = "off" ]; then
        $MPV_BINARY $MPV_ARGUMENTS $LOCAL_FILE &
    fi
    sleep 30
    killall $MPV_BINARY
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
