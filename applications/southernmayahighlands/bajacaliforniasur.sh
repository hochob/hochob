#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export BAJACALIFORNIASUR_PID=$$
export BAJACALIFORNIASUR_NAME="BajaCaliforniaSur"
export BAJACALIFORNIASUR_PATH=$(readlink -f "$0")
export BAJACALIFORNIASUR_DIRECTORY=$(dirname "$BAJACALIFORNIASUR_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $BAJACALIFORNIASUR_PID $BAJACALIFORNIASUR_NAME

/services/image/eog.sh '/config/www/media/Amikoo/Image/LupeBienvenidaIntel.png' &
sleep 1

/services/voice/voice.sh 'on' 'espeak' 'spanish' 'Hola a todos!'
sleep .1

/services/video/video.sh 'off' '/config/www/media/Parte1_v2.mp4'
sleep 8.35
/services/voice/voice.sh 'on' 'espeak' 'spanish' 'Perdon! Lo se!, Es que me emociono'
sleep .1

/services/video/video.sh 'off' '/config/www/media/Parte2_v2.mp4'
sleep 3
/services/voice/voice.sh 'on' 'espeak' 'spanish' 'Por supuesto'
sleep 2

/services/voice/voice.sh 'on' 'espeak' 'spanish' \
 'Muchas gracias futuras y futuros ingenieros!.
 A nombre del equipo de Intel, deseamos que hayan tenido una gran visita.'

# End of File
