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
                                    'Desde los albores de nuestra civilización \
                                     moderna, los humanos hemos estado empujando \
                                     hacia algo, continuamente hemos estado creando \
                                     herramientas para facilitarnos la vida, \
                                     herramientas para ayudarnos a construir, \
                                     sobrevivir y prosperar en las circunstancias \
                                     de la era. Herramientas como el lenguaje, \
                                     las matemáticas y la ciencia ayudaron a \
                                     construir una sociedad temprana, y nunca \
                                     se detuvo. ¿Cuál fue la herramienta que \
                                     realmente cambió el mundo?'

           ;;

     0201)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Imagina lo imposible. Cual es el límite?'
           ;;

     0202)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Que es la inteligencia?'
           ;;

     0203)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'La inteligencia artificial tiene el potencial \
                                     de ayudar a resolver todos los retos más \
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
                                    'De acuerdo al INEGI para el año 2050, una cuarta parte \
                                     de la población de México serán adultos mayores. Cuales
                                     son los principales problemas a los que nos enfrentaremos?'
           ;;

     0402)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Malnutrición, enfermedades, depresión, discriminación'
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

     1101)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Buenos días. Son las 9 15, tendremos una mañana soleada, \
                                     como dormiste?'
           ;;

     1102)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Te veo triste. Cómo te sientes hoy? recordando que ayer \
                                     estabas preocupado.'
           ;;

     1103)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'De acuerdo. Haré cita con el psicólogo próxima semana. \
                                     No has tomado tu pastilla de las 9, y para el desayuno, tu \
                                     nutriólogo recomendó para este mes un máximo de 1400 calorías \
                                     diarias, te recomiendo dos claras de huevo, té de manzanilla, \
                                     y un solo pan tostado con mermelada.'
           ;;

     1104)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'En lo que desayunas, me permites recordarte tus actividades \
                                     del día de hoy?'
           ;;

     1105)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'A las 12 hay reunión en el templo, a las 3 de la tarde cita \
                                     con el médico interno. Tu taxi está programado para pasar por \
                                     ti 2:30. Tienes mensajes pendientes de tu familia, me permites \
                                     leerlos?'
           ;;

     1301)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Esta aplicación está diseñada para detectar los humanos \
                                     presentes en un área seleccionada predefinida. Si la gente \
                                     ingresa al área de reunión marcada, levanta la alerta y \
                                     envía un mensaje a través de mqtt. Su objetivo es demostrar \
                                     cómo usar CV para mejorar la seguridad de la línea de montaje \
                                     para operadores humanos y trabajadores de fábricas.'
           ;;

     1302)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Esta aplicación está diseñada para un sistema de cámara montado \
                                     en un estante que cuenta la cantidad de transeúntes y la \
                                     cantidad de personas que miran hacia la pantalla. Su objetivo \
                                     es proporcionar estadísticas de mercadotecnia del mundo real para la \
                                     publicidad en el estante de la tienda.'
           ;;

     1501)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Esta aplicación está diseñada para un sistema de cámara minorista \
                                     que cuenta la cantidad de transeúntes que miran hacia la pantalla y \
                                     capturan su estado de ánimo, que se clasifica en 5 emociones: \
                                     neutral, feliz, triste, sorprendido, enojado. Si la emoción no se \
                                     puede determinar con un nivel de confianza mayor que el valor \
                                     configurado, la emoción se marca como desconocida. Su objetivo \
                                     es proporcionar estadísticas de mercadotecnia para el \
                                     análisis del estado de ánimo de compras en la tienda.'
           ;;

     2101)
           /services/voice/voice.sh 'on' 'espeak' 'spanish' \
                                    'Son los sueños, los que nos mantienen trabajando duro. \
                                     Son sueños que nos mantienen sin miedo a los errores, \
                                     a los contratiempos.'
           ;;

     *)
           echo "Sorry, I don't understand"
           ;;
esac

# End of File
