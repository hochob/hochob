#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export MACARRONES_PID=$$
export MACARRONES_PATH=$(readlink -f "$0")
export MACARRONES_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Les contaré un secreto, aqui en Guadalajara no hacemos procesadores; \
            Lo que hacemos es verificar que todo funcione perféctamente en un montón de productos
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
