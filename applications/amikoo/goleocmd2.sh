#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export GOLEOCMD2_PID=$$
export GOLEOCMD2_PATH=$(readlink -f "$0")
export GOLEOCMD2_DIRECTORY=$(dirname "$GOLEOCMD2_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

/services/amikoo/leomovement.sh "leo" 'cmd2'


# End of File