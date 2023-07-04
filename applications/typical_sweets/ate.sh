#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ATE_PID=$$
export ATE_PATH=$(readlink -f "$0")
export ATE_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Ahora empezaremos con el recorrido. Les pido de favor que todos permanezcan juntos para que puedan escuchar la explicación y si tienen alguna duda con confianza pueden preguntar, pues unas de las cosas que Intel valora mucho es la CURIOSIDAD por aprender y saber más. La curiosidad ha  hecho que ingenieros hagan invenciones para resolver problemas y hacer nuestra vida más práctica y sencilla. Por favor pasen, mi voz los guiara por el recorrido
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

# /services/voice/voice.sh "on" "espeak" "spanish" "$LOCAL_PHRASE"
/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

/applications/typical_sweets/borrachitos.sh &
sleep 120

/applications/typical_sweets/camotes.sh &
sleep 150

/applications/typical_sweets/charamusca.sh &
sleep 120

/applications/typical_sweets/chupirul.sh &

# End of File
