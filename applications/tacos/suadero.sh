#!/bin/bash

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export SUADERO_PID=$$

LOCAL_PHRASE[0]="Que la fuerza los acompañe" 
LOCAL_PHRASE[1]="Hasta luego cocodrilo" 
LOCAL_PHRASE[2]="Hasta la vista, beibi"


# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

choosePhrase()
{
    rand=$[ $RANDOM % 2 ]
    LOCAL_PHRASE=${LOCAL_PHRASE[$rand]}
}

choosePhrase

/services/image/feh.sh "/config/www/media/HeyAmikoo/Image/Gracias.png" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
