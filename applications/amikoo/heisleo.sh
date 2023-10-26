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

#/services/voice/voice.sh 'on' 'espeak' 'spanish' \
/services/voice/voice.sh "amikoo" "default" "spanish" \
            'Muchas gracias Pat por tus palabras. \

             El museo de Intel es un lugar para aprender, jugar y explorar \
             el apasionante mundo de la tecnología y, la innovación que han \
             cambiado nuestras vidas. \

             Todos en Intel México esperamos que se sientan inspirados a explorar \
             las carreras en Ciencias, Tecnología, Ingenierías, Arte y \
             Matemáticas, y, ser parte del futuro tecnológico. \

             Ahora los dejaré con mi compañero Leo, quien dará inicio a \
             nuestro recorrido por este increible museo. \

             Disfruten el resto de su visita.'

# End of File
