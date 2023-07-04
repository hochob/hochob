#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ARRACHERA_PID=$$

LOCAL_PHRASE="Es el cerebro que controla una computadora, por ejemplo la que me hace funcionar. \
            ¿Sabían que Intel hace los procesadores más avanzados del mundo? \
            Y nisiquiera son más grandes que las uñas de sus dedos
            "


# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================
/services/image/feh.sh "/config/www/media/HeyAmikoo/Image/Cerebro.png" &

/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .5

/services/amikoo/amikoomovement.sh 'lupe' 'leftup' 'Lupe Arm Left Up' && sleep .5

/services/amikoo/amikoomovement.sh 'lupe' 'leftfold' 'Lupe Arm Left Fold' && sleep .5

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

/services/amikoo/amikoomovement.sh 'lupe' 'leftunfold' 'Lupe Arm Left Unfold' && sleep .5

/services/amikoo/amikoomovement.sh 'lupe' 'leftdown' 'Lupe Arm Left Down'&& sleep .5

/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .5





# End of File
