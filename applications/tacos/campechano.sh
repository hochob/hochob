#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CAMPECHANO_PID=$$

LOCAL_PHRASE="Con la inteligencia artificial, las computadoras ayudan a las personas a hacer cosas más rápido y mejor. \
            Tambien hace a las computadoras ver, hablar, o escuchar, así como lo hago yo.'
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
