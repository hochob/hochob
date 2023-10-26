#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export GOLEO_PID=$$
export GOLEO_PATH=$(readlink -f "$0")
export GOLEO_DIRECTORY=$(dirname "$GOLEO_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

/services/amikoo/leomovement.sh "leo" 'start'
/services/amikoo/leomovement.sh "leo" 'second'
/services/amikoo/leomovement.sh "leo" 'final'


# End of File
