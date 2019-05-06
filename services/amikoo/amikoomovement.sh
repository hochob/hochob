#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export AMIKOOMOVEMENT_PID=$$

LOCAL_AMIKOO=$1
LOCAL_COMMAND=$2
LOCAL_MESSAGE=""

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

LOCAL_TOPIC=$LOCAL_AMIKOO/$AMIKOO/$LOCAL_COMMAND

mosquitto_pub.sh $LOCAL_TOPIC $LOCAL_MESSAGE
