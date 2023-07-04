#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export JAMONCILLO_PID=$$
export JAMONCILLO_PATH=$(readlink -f "$0")
export JAMONCILLO_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" Esta siguiente sección, como lo podrán ver, es bastante diferente a la anterior, \
             incluso el piso es diferente  \
            "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "Beginning speaker" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
