#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export INTERNS_PID=$$
export INTERNS_NAME="CEO"
export INTERNS_PATH=$(readlink -f "$0")
export INTERNS_DIRECTORY=$(dirname "$INTERNS_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6

sleep 1

/services/voice/voice.sh 'on' 'espeak' 'spanish' \
                          'Hola'

/services/voice/voice.sh 'on' 'espeak' 'spanish' \
                          'Hola Hola'

/services/voice/voice.sh 'on' 'espeak' 'spanish' \
                          'Mi nombre es Lupe, bienvenidos a Intel'

sleep 1

/services/amikoo/amikoomovement.sh 'lupe' 'rightup' 'Lupe Arm Right Up' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftup' 'Lupe Arm Left Up' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightfold' 'Lupe Arm Right Fold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftfold' 'Lupe Arm Left Fold' && sleep .6

/services/amikoo/amikoomovement.sh 'lupe' 'resetall' 'Lupe Legs Stop'

# End of File
