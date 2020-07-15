#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export RAJAS_PID=$$

LOCAL_PHRASE="Estos edificios cuentan con una certificación LEEED Gold.
            Lo que significa que tomamos medidas para cuidar el ambiente. \
            Por ejemplo, tenemos una planta de tratamiento de agua, la basura es separada \
            y reciclada. Además, apoyamos transportes alternativos como el transporte \
            público y las bicicletas. Tambien se están implementando páneles solares. \
            "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/image/feh.sh "/config/www/media/HeyAmikoo/Image/Sustentabilidad" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
