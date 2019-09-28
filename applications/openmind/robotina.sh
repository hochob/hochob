#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ROBOTINA_PID=$$
export ROBOTINA_NAME="ROBOTINA"
export ROBOTINA_PATH=$(readlink -f "$0")
export ROBOTINA_DIRECTORY=$(dirname "$ROBOTINA_PATH")
export ROBOTINA_COMMAND=$1

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

case $ROBOTINA_COMMAND in

     0101)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Hola, a todos! Como están?'
           ;;

     0102)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'No los escucho! Como están?'
           ;;

     0103)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Bienvenidos a nuestra plática: \
                                     Robotina, es decir, su servidora! ya está aquí: \
                                     Inteligencia Artificial'
           ;;

     0201)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'El cambio climático, biodiversidad, el agua, \
                                     nutrición, los bosques, los océanos, población, \
                                     ciudades, migración, agricultura, entre otros. \
                                     Pero espera, ninguno de estos son de lo que hablaremos \
                                     hoy, correcto?'

           ;;

     *)
           echo "Sorry, I don't understand"
           ;;
esac

# End of File
