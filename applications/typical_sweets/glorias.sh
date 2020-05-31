#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export GLORIAS_PID=$$
export GLORIAS_PATH=$(readlink -f "$0")
export GLORIAS_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Es todo lo que tenemos que contarles de la historia \
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "Lobby TV" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
