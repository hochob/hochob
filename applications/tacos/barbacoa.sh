#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export BARBACOA_PID=$$

LOCAL_PHRASE=" Los muones son partículas elementales que se encuentran en los rayos \
    Cósmicos, tienen un tiempo de vida de 2,2 microsegundos. Han sido utilizados para \
    conocer a detalle volcanes o cámaras ocultas en pirámides egípcias.
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================
/services/video/video.sh "off" "/config/www/media/HeyAmikoo/Video/Muones.mp4" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
