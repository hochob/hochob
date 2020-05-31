#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export COCADA_PID=$$
export COCADA_PATH=$(readlink -f "$0")
export COCADA_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Y les mostraré un poco de historia de los microprocesadores \
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
