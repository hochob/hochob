#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export IAMLUPE_PID=$$
export IAMLUPE_PATH=$(readlink -f "$0")
export IAMLUPE_DIRECTORY=$(dirname "$IAMLUPE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

#/services/amikoo/amikoovoice.sh 'lupe' spanish \
#               'Hola'

/services/voice/voice.sh 'on' 'espeak' 'spanish' \
     'Hola. Bienvenido al Centro de Diseño de Intel Guadalajara, mi nombre \
      es Lupe, y me da mucho gusto recibirlos en mi casa. Tendré el placer \
      de introducirlos y guiarlos en nuestro Centro de Visitantes, estoy \
      emocionado de mostrarles el apasionante mundo de la tecnología.'

# End of File
