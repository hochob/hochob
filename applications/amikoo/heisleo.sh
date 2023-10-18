#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export HEISLEO_PID=$$
export HEISLEO_PATH=$(readlink -f "$0")
export HEISLEO_DIRECTORY=$(dirname "$HEISLEO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

#/services/amikoo/amikoovoice.sh 'lupe' spanish \
#               'Hola Leo'

/services/voice/voice.sh 'on' 'espeak' 'spanish' \
            'Muchas gracias Pat por tus palabras. Ahora los dejaré con mi \
             compañero Leo, quien dará inicio a nuestro recorrido por este \
             increible museo, donde aprenderán sobre los avances tecnológicos \
             que han cambiado nuestras vidas. El museo de Intel es un lugar \
             para aprender, jugar y explorar el apasionante mundo de la \
             tecnología y la innovación. Todos en Intel México esperamos que \
             se sientan inspirados a explorar las carreras en STEAM y a ser \
             parte del futuro tecnológico. Disfruten el resto de su visita.'

# End of File
