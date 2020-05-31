#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CAMOTES_PID=$$
export CAMOTES_PATH=$(readlink -f "$0")
export CAMOTES_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Para empezar, me gustaría mostrarles algo que pasó 'Antes del Inicio' \
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
