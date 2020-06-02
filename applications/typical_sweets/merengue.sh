#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export MACARRONES_PID=$$
export MACARRONES_PATH=$(readlink -f "$0")
export MACARRONES_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Las FAB, son los lugares donde se fabrican los microprocesadores, son uno de los lugares más tecnológicamente avanzados \
            del mundo, incluso llegan a tener cuartos más limpios que un quirófano. \
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
