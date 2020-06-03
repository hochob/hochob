#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export TORTA_DE_SANTA_CLARA_PID=$$
export TORTA_DE_SANTA_CLARA_PATH=$(readlink -f "$0")
export TORTA_DE_SANTA_CLARA_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE=" ¿Escuchan ese sonido? Es un piano, pero uno muy especial. Es un piano cósmico, \
            y cada nota es una partícula que ha caído desde el espacio. Estas partículas se llaman Muones, \
            viajan casi tan rápido como la luz. ¿Sabían que hay científicos estudiando esta particula para \
            ayudar a descubrir cosas bajo tierra?
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
