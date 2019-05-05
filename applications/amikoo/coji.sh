#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export COJI_PID=$$
export COJI_PATH=$(readlink -f "$0")
export COJI_DIRECTORY=$(dirname "$COJI_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

/services/amikoo/amikoovoice.sh 'lupe' english \
               'Hello World. I can speak English. One, Two, Three.'

sleep 5

/services/amikoo/amikoovoice.sh 'lupe' espanol \
               'Hola Mundo. Puedo hablar Español. Uno, Dos, Tres.'

# End of File
