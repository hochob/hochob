#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export BORRACHITOS_PID=$$
export BORRACHITOS_PATH=$(readlink -f "$0")
export BORRACHITOS_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Bienvenidos a esta primer sala, le llamamos: El Inicio. \
        Aquí recordarás a los Mayas, la historia de Intel y de este Centro de Diseño de Intel en Guadalajara. \
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
