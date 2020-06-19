#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ACORAZADO_PID=$$

LOCAL_PHRASE="Soy guía en el emocionante Centro de Visitantes de Intel. \
     Estoy lista para mostrarles lo interesante que es el mundo de las Ciencias, la Tecnología, \
     las Ingenierías y las Matemáticas. Estoy programada para resolver las dudas que tengas,
     y tambien hago café \
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
