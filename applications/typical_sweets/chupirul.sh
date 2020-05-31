#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export BORRACHITOS_PID=$$
export BORRACHITOS_PATH=$(readlink -f "$0")
export BORRACHITOS_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Y esta es la historia de donde estamos parados \
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
