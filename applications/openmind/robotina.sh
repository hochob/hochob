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
                                    'Imagina lo imposible.'
           ;;

     0202)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Que es la inteligencia?'
           ;;

     0203)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'La inteligencia artificial tiene el potencial \
                                     de ayudar a resolver todos los problemas más \
                                     difíciles del presente y del futuro. Tendrán \
                                     ustedes, los seres humanos, la inteligencia \
                                     para crear esas soluciones como sociedad?'
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
                                    'De acuerdo al  INEGI para el año 2050, una cuarta parte \
                                     de la población de México serán adultos mayores.'

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

     2101)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Lo que quiero que esta compañía nunca olvide, \
                                     porque tenemos el tamaño de hoy, muchas compañías, \
                                     aprendí por qué fallan, se olvidan de los sueños. \
                                     Son los sueños los que nos mantienen trabajando duro. \
                                     Son sueños que nos mantienen sin miedo a los errores, \
                                     a los contratiempos.'

           ;;

     *)
           echo "Sorry, I don't understand"
           ;;
esac

# End of File
