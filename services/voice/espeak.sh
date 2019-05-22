#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ESPEAK_PID=$$
export ESPEAK_BINARY=espeak
export ESPEAK_ARGUMENTS="--stdout"
export ESPEAK_PLAY="-w"
export ESPEAK_LANGUAGE="-ven+m5"
export ESPEAK_INPUT="No input has been provided"
export ESPEAK_AMPLITUDE=120
export ESPEAK_PITCH=10
export ESPEAK_SPEED=180
export ESPEAK_SPEECH_FILE=$ESPEAK_SPEECH_FILE
export ESPEAK_SPEECH_MP3_FILE=$ESPEAK_SPEECH_MP3_FILE
export SPEECH_FILE=$SPEECH_FILE
export SPEECH_MP3_FILE=$SPEECH_MP3_FILE

LOCAL_LANGUAGE="$1"
LOCAL_TEXT="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 2 ]
then
    if [ "$LOCAL_LANGUAGE" = "english" ]; then
        export ESPEAK_LANGUAGE="-v en-us -a ${ESPEAK_AMPLITUDE} -p ${ESPEAK_PITCH} -s ${ESPEAK_SPEED}"
    elif [ "$LOCAL_LANGUAGE" = "spanish" ]; then
        export ESPEAK_LANGUAGE="-v es-la -a ${ESPEAK_AMPLITUDE} -p ${ESPEAK_PITCH} -s ${ESPEAK_SPEED}"
    fi

    export ESPEAK_INPUT="$LOCAL_TEXT"

    $ESPEAK_BINARY $ESPEAK_PLAY $ESPEAK_SPEECH_FILE $ESPEAK_LANGUAGE "$ESPEAK_INPUT"

    ffmpeg -y -i $ESPEAK_SPEECH_FILE $ESPEAK_SPEECH_MP3_FILE

    cp $ESPEAK_SPEECH_FILE $SPEECH_FILE
    cp $ESPEAK_SPEECH_MP3_FILE $SPEECH_MP3_FILE

else
    echo "Invalid number of arguments, see Documentation"
    exit 1
fi

# End of File
