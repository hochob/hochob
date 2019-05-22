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

/services/image/eog.sh /config/www/media/DiaDeMuertos/Image/Calaverita.jpg &
sleep 2
/services/voice/voice.sh 'on' 'espeak' 'spanish' 'Feliz dia de los muertos!'
sleep 2
/services/voice/voice.sh 'on' 'espeak' 'english' 'Hi There! My name is Lupe'
