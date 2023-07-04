#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export MUEGANO_PID=$$
export MUEGANO_PATH=$(readlink -f "$0")
export MUEGANO_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Ahora pasamos a la parte más divertida del recorrido, en esta sección podrán jugar con la ciencia. \
            Descubrirán un poco más acerca de lo que hacemos aquí. Diviértanse y no olviden preguntar
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
