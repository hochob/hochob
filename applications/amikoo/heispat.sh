#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export HEISPAT_PID=$$
export HEISPAT_PATH=$(readlink -f "$0")
export HEISPAT_DIRECTORY=$(dirname "$HEISPAT_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

#/services/amikoo/amikoovoice.sh 'lupe' spanish \
#               'Hola Pat'

/services/voice/voice.sh 'on' 'espeak' 'spanish' \

     'Ahora los dejo con nuestro Si, I, O,, Pat Gelsiner, quien tiene un \
      mensaje muy importante para todos ustedes'

/services/video/video.sh 'off' '/config/www/media/VisitorsCenter/Video/VisitorsCenter.mp4'

# End of File
