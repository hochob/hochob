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
                                    'En México, innovación y diseño, tenemos \
                                     la pasión de transformar los retos en \
                                     oportunidades para generar cambios, romper \
                                     inercias y abrir nuestra mente a nuevas \
                                     posibilidades. '

           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Bienvenidos a nuestra plática: \
                                     Robotina, es decir, su servidora! ya está aquí: \
                                     Inteligencia Artificial'
           ;;

     0201)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Imagina lo imposible porque el único límite es tu imaginación.'
           ;;

     0301)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'El cambio climático, biodiversidad, el agua, \
                                     nutrición, los bosques, los océanos, población, \
                                     ciudades, migración, agricultura, entre otros. \
                                     Pero espera, ninguno de estos son de lo que hablaremos \
                                     hoy, correcto?'

           ;;

     0401)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    '4'

           ;;

     0501)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Dip Blu, fue una supercomputadora desarrollada por IBM \
                                     para jugar al ajedrez. Fue la primera que venció a un \
                                     campeón del mundo vigente, Gary Kaspáróv'

           ;;

     0601)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'AlphaGo es un programa informático de inteligencia artificial \
                                     para jugar al juego de mesa, Go. En octubre de 2015 se convirtió \
                                     en la primera máquina de Go, en ganar a un jugador profesional.'
           ;;

     0602)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'AlphaZero es un programa informático que logró en 24 horas \
                                     un nivel de juego sobrehumano en ajedrez, shogi y Go, al derrotar \
                                     a campeones del mundo. AlphaZero dominó en ajedrez después \
                                     de solo 4 horas de autoaprendizaje.'
           ;;

     1001)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    '10'

           ;;



     *)
           echo "Sorry, I don't understand"
           ;;
esac

# End of File
