#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CEO_PID=$$
export CEO_NAME="CEO"
export CEO_PATH=$(readlink -f "$0")
export CEO_DIRECTORY=$(dirname "$MECCANOID_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6

sleep 1

#/services/amikoo/amikoovoice.sh 'lupe' 'english' 'Hi Bob! Welcome to Mexico! I am Lupe, nice meeting you!'
/services/voice/voice.sh 'on' 'espeak' 'english' 'Hi Bob! Welcome to Mexico! I am Lupe, nice meeting you!'

sleep 1

/services/amikoo/amikoomovement.sh 'lupe' 'rightup' 'Lupe Arm Right Up' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftup' 'Lupe Arm Left Up' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightfold' 'Lupe Arm Right Fold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftfold' 'Lupe Arm Left Fold' && sleep .6

sleep 1

/services/amikoo/amikoomultimedia.sh 'lupe' 'Intel' 'Image' 'BobSwanIntel.jpg'
/services/image/feh.sh '/config/www/media/Intel/Image/BobSwanIntel.jpg' &

sleep 1

#/services/amikoo/amikoovoice.sh 'lupe' 'english' 'Intel Mexico is helping you to build the next generation of Intel leaders!'
/services/voice/voice.sh 'on' 'espeak' 'english' 'Intel Mexico is helping you to build the next generation of Intel leaders!'

sleep 2.5

/services/amikoo/amikoomovement.sh 'lupe' 'leftunfold' 'Lupe Arm Left Unfold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightunfold' 'Lupe Arm Right Unfold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftdown' 'Lupe Arm Left Down'&& sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightdown' 'Lupe Arm Right Down' && sleep .6

/services/amikoo/amikoomovement.sh 'lupe' 'resetall' 'Lupe Legs Stop'

#/services/amikoo/amikoovoice.sh 'lupe' 'english' 'Do not be encumbered by history, just go out and do something wonderful. Today is just the beginning! See you soon Bob!'
/services/voice/voice.sh 'on' 'espeak' 'english' 'Do not be encumbered by history, just go out and do something wonderful. Today is just the beginning! See you soon Bob!'

# End of File
