#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export MPV_PID=$$
export MPV_BINARY=mpv
export MPV_ARGUMENTS="--audio-device=alsa --fs --keep-open=yes "
export MPV_LOOP="--loop"
export KILL_MPV="kill $(ps aux | grep 'mpv')"

LOCAL_LOOP="$1"
LOCAL_FILE="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

$KILL_MPV
if [ $# -eq 2 ]
then
    if [ "$LOCAL_LOOP" = "on" ]; then
        $MPV_BINARY $MPV_ARGUMENTS $MPV_LOOP $LOCAL_FILE
    elif [ "$LOCAL_LOOP" = "off" ]; then
        $MPV_BINARY $MPV_ARGUMENTS $LOCAL_FILE
    fi
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
