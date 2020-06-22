#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export PESCADO_PID=$$

LOCAL_PHRASE="En Guadalajara los ingenieros se encargan de revisar que los procesadores y demás productos de Intel funcionen bien. \
            Aquí no es una fábrica, sino un centro de validación'
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
