#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ORDER66_PID=$$

LOCAL_PHRASE="Ejecutando la orden 66
            "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "on" "espeak" "spanish" "$LOCAL_PHRASE"

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

/services/voice/voice.sh "Lobby TV" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
