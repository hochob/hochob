#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export OLLA_DE_TAMARINDO_PID=$$
export OLLA_DE_TAMARINDO_PATH=$(readlink -f "$0")
export OLLA_DE_TAMARINDO_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Espero que se hayan divertido, nuestro recorrido casi ha terminado. \
            Los invito a pasar al último pasillo, y en nombre de todos los ingenieros \
            y robots que trabajamos aquí, les doy las gracias. 
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
