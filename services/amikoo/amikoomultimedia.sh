#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export AMIKOOMULTIMEDIA_PID=$$

LOCAL_AMIKOO=$1
LOCAL_TRADITION=$2
LOCAL_SKILL=$3
LOCAL_ARGUMENT=$4

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ "$LOCAL_SKILL" = "Audio" ]; then
    LOCAL_SKILL=$LOCAL_AMIKOO/$AMIKOO_MULTIMEDIA_AUDIO
elif [ "$LOCAL_SKILL" = "Image" ]; then
    LOCAL_SKILL=$LOCAL_AMIKOO/$AMIKOO_MULTIMEDIA_IMAGE
elif [ "$LOCAL_SKILL" = "Video" ]; then
    LOCAL_SKILL=$LOCAL_AMIKOO/$AMIKOO_MULTIMEDIA_VIDEO
fi

if [ "$LOCAL_ARGUMENT" = "Stop" ]; then
    mosquitto_pub.sh $LOCAL_SKILL "$LOCAL_TRADITION/Stop"
elif [ "$LOCAL_ARGUMENT" = "Random" ]; then
    mosquitto_pub.sh $LOCAL_SKILL "$LOCAL_TRADITION/Random"
else
    mosquitto_pub.sh $LOCAL_SKILL "$LOCAL_TRADITION/$LOCAL_ARGUMENT"
fi

# End of File
