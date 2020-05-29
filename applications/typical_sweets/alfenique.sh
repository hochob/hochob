#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ALFENIQUE_PID=$$
export ALFENIQUE_PATH=$(readlink -f "$0")
export ALFENIQUE_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Bienvenidos a mi casa, su casa. \
    Es un gusto conocerlas y conocerlos. Soy Lupe, \
    Soy guía en el emocionante Centro de Visitantes de Intel. \
    Estoy listo para mostrarles lo interesante que es el mundo\
    de las Ciencias, la Tecnología, las Ingenierías y las Matemáticas.\
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
