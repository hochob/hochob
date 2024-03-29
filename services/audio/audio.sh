#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

export MPV_PID=$$
export MPV_BINARY=mpv
export MPV_ARGUMENTS=--audio-device=pulse/alsa_output.usb-C-Media_Electronics_Inc._USB_PnP_Sound_Device-00.analog-stereo

LOCAL_FILE="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]
then
    $MPV_BINARY $MPV_ARGUMENTS $LOCAL_FILE
else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
