#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CURL_PID=$$
export CURL_BINARY=curl
export AMIKOO_TTS_API_ADDRESS=$AMIKOO_TTS_API_ADDRESS

SPEECH_TEXT="${1}"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ $# -eq 1 ]; then

$CURL_BINARY -X POST "$AMIKOO_TTS_API_ADDRESS" -H "Content-Type: text/plain" -d "$SPEECH_TEXT"

else

    echo "Invalid number of arguments, see Documentation"
    exit 1

fi
# End of File
