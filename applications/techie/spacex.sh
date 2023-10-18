#!/usr/bin/env bash

# =============================================================================
# Variables
# =============================================================================

# None

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

/services/voice/voice.sh 'on' 'espeak' 'spanish' 'Puedo desplegar imagenes!'
sleep 1
/services/image/feh.sh '/config/www/media/DiaDeMuertos/Image/Calaverita.jpg' &
sleep 2
/services/voice/voice.sh 'on' 'espeak' 'spanish' 'Puedo reproducir audio en formato mp3!'
sleep 1
/services/audio/audio.sh '/config/www/media/Amikoo/Sound/IAmARobotSoundBibleCom.mp3'
sleep 2
/services/voice/voice.sh 'on' 'espeak' 'english' 'And I can play videos'
sleep 1
/services/video/video.sh 'off' '/config/www/media/VisitorsCenter/Video/VisitorsCenter.mp4'
sleep 2
/services/voice/voice.sh 'on' 'espeak' 'english' 'That is all I can do for now!'
