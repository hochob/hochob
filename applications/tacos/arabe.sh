#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ARABE_PID=$$

LOCAL_PHRASE="El piano cósmico es un instrumento muy especial. Lo tocan partículas \
            que caen del espacio llamadas Muones. \
            "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================
/services/image/feh.sh "/config/www/media/HeyAmikoo/Image/PianoCosmico" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
