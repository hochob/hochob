#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export MUEGANO_PID=$$
export MUEGANO_PATH=$(readlink -f "$0")
export MUEGANO_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Es todo lo que tengo que contarles acerca de los labs y las fab, \
            Espero que se hayan tomado fotos
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
