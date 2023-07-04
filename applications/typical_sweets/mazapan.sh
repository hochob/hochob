#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export MAZAPAN_PID=$$
export MAZAPAN_PATH=$(readlink -f "$0")
export MAZAPAN_DIRECTORY=$(dirname "$MECCANOID_PATH")

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

/services/voice/voice.sh "Beginning speaker" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
