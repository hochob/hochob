#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export TOYOTA_PID=$$
export TOYOTA_NAME="Toyota"
export TOYOTA_PATH=$(readlink -f "$0")
export TOYOTA_DIRECTORY=$(dirname "$TOYOTA_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

/services/voice/voice.sh 'on' 'espeak' 'spanish' \
  'Hola mundo! Probando uno, dos, tres, probando!'

/services/voice/voice.sh 'on' 'espeak' 'english' \
  'Hello world! Testing One, two, three, testing!'

# End of File
