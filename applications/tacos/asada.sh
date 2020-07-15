#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ASADA_PID=$$

LOCAL_PHRASE="En mi tiempo libre me gusta hacer Yoga, ¿Sabían que aquí dan clases de Yoga?
    Tambien me gusta correr, aunque mas bien ruedo
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/image/feh.sh "/config/www/media/HeyAmikoo/Image/Ejercicio" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
