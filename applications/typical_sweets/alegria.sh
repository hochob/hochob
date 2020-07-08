#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ALEGRIA_PID=$$
export ALEGRIA_PATH=$(readlink -f "$0")
export ALEGRIA_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Bienvenidos a mi casa, su casa. \
    Es un gusto conocerlas y conocerlos. Soy Lupe, \
    Soy guía en el emocionante Centro de Visitantes de Intel. \
    Estoy lista para mostrarles lo interesante que es el mundo \
    de las Ciencias, la Tecnología, las Ingenierías y las Matemáticas.
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/image/feh.sh "/config/www/media/HeyAmikoo/Bienvenidos.png" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

#kill $(pgrep feh)

# End of File
