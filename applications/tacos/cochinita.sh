#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export COCHINITA_PID=$$

LOCAL_PHRASE="Soy producto del esfuerzo de bastantes ingenieras e ingenieros que han trabajado aquí. 
            Pero en particular no recuerdo a nadie. A veces veo a uno de ellos... pero olvidé su nombre
            "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
