#!/usr/bin/env bash

# =============================================================================
# Variables
# =============================================================================

# None

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

/services/protocol/mosquitto_pub.sh 'hochob/status' '1'

/services/amikoo/amikoomovement.sh 'lupe' 'resetall' 'Lupe Legs Stop' && sleep .6

/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6

/services/amikoo/amikoomovement.sh 'lupe' 'leftdown' 'Lupe Arm Left Down'&& sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightdown' 'Lupe Arm Right Down' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightunfold' 'Lupe Arm Right Fold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftunfold' 'Lupe Arm Left Fold' && sleep .6

/services/amikoo/amikoomovement.sh 'lupe' 'leftfold' 'Lupe Arm Left Unfold' && sleep .9
/services/amikoo/amikoomovement.sh 'lupe' 'rightfold' 'Lupe Arm Right Unfold' && sleep .9
/services/amikoo/amikoomovement.sh 'lupe' 'rightup' 'Lupe Arm Right Up' && sleep .9
/services/amikoo/amikoomovement.sh 'lupe' 'leftup' 'Lupe Arm Left Up' && sleep .9

/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6

/services/amikoo/amikoomovement.sh 'lupe' 'resetall' 'Lupe Legs Stop' && sleep .6

# End of File
