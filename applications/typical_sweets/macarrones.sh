#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export MACARRONES_PID=$$
export MACARRONES_PATH=$(readlink -f "$0")
export MACARRONES_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Uno de los elementos clave para fabricar los microprocesadores es el silicio, \
            y este proviene de la arena, increíble ¿no? \
            "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "Beginning speaker" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
