#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export MECCANOID_PID=$$
export MECCANOID_NAME="Meccanoid"
export MECCANOID_PATH=$(readlink -f "$0")
export MECCANOID_DIRECTORY=$(dirname "$MECCANOID_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/amikoo/amikoovoice.sh 'lupe' 'english' 'Dance with me, please!'
sleep 2.5
/services/amikoo/amikoovoice.sh 'lupe' 'espanol' 'Baila conmigo, por favor!'

sleep 5

/services/amikoo/amikoomultimedia.sh 'lupe' 'DiaDeMuertos' 'Audio' 'MichaelJacksonThrillerShort.mp3'

sleep 10

/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6

sleep 2.5

/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightup' 'Lupe Arm Right Up' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftup' 'Lupe Arm Left Up' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightfold' 'Lupe Arm Right Fold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftfold' 'Lupe Arm Left Fold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'moveright' 'Lupe Legs Move Right' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'movestop' 'Lupe Legs Stop' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'moveleft' 'Lupe Legs Move Left' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'movestop' 'Lupe Legs Stop' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftunfold' 'Lupe Arm Left Unfold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightunfold' 'Lupe Arm Right Unfold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftdown' 'Lupe Arm Left Down'&& sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightdown' 'Lupe Arm Right Down' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6

/services/amikoo/amikoomultimedia.sh 'lupe' 'DiaDeMuertos' 'Audio' 'Stop'

/services/amikoo/amikoomovement.sh 'lupe' 'resetall' 'Lupe Legs Stop'

# End of File
