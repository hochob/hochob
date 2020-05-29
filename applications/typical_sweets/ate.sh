#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ATE_PID=$$
export ATE_PATH=$(readlink -f "$0")
export ATE_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="A nombre de cada uno de los grandes \
     seres humanos y robots que aquí trabajan les deseamos la mejor de las experiencias. \
     Muchas gracias por haber venido. Y por favor pasen,\
     mi voz los guiara a través del recorrido
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "on" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
