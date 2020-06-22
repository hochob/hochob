#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ARRACHERA_PID=$$

LOCAL_PHRASE="Es el cerebro que controla una computadora, por ejemplo la que me hace funcionar. \
            ¿Sabían que Intel hace los procesadores más avanzados del mundo? \
            Y nisiquiera son más grandes que las uñas de sus dedos
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
