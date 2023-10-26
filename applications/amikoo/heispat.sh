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

#/services/voice/voice.sh 'on' 'espeak' 'spanish' \
/services/voice/voice.sh "amikoo" "default" "spanish" \
     'Ahora los dejo con nuestro Si I Ou,, Pat Guelsinguer, quien tiene un \
      mensaje muy importante para todos ustedes'

/services/video/video.sh 'off' '/config/www/media/Intel/Video/video_pat.mp4'

# End of File
