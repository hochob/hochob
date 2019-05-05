#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export AMIKOOVOICE_PID=$$

LOCAL_AMIKOO=$1
LOCAL_LANGUAGE="$2"
LOCAL_MESSAGE=""
LOCAL_TOPIC=""

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

i=0
for var in "$@"
do
    if [ "$i" -ge 2 ]; then
      LOCAL_MESSAGE=$LOCAL_MESSAGE"$var"
      echo $LOCAL_MESSAGE
    fi
    i=`expr $i + 1`
done

if [ "$LOCAL_LANGUAGE" = "english" ]; then
    LOCAL_TOPIC=$LOCAL_AMIKOO/$AMIKOO_VOICE_ENGLISH
elif [ "$LOCAL_LANGUAGE" = "espanol" ]; then
    LOCAL_TOPIC=$LOCAL_AMIKOO/$AMIKOO_VOICE_ESPANOL
fi

mosquitto_pub.sh $LOCAL_TOPIC $LOCAL_MESSAGE
