#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CHARAMUSCA_PID=$$
export CHARAMUSCA_PATH=$(readlink -f "$0")
export CHARAMUSCA_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Ahora, les contaré una historia que comenzó hace más 50 años \
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "Lobby TV" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
