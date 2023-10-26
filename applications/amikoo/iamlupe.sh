#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

export IAMLUPE_PID=$$
export IAMLUPE_PATH=$(readlink -f "$0")
export IAMLUPE_DIRECTORY=$(dirname "$IAMLUPE_PATH")

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

. /services/main.sh

/services/image/feh.sh "/config/www/media/HeyAmikoo/Image/Bienvenidos.png" &

/services/amikoo/amikoomovement.sh 'lupe' 'resetall' 'Lupe Legs Stop' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6

#/services/voice/voice.sh 'on' 'espeak' 'spanish' \
/services/voice/voice.sh "amikoo" "default" "spanish" \
     'Hola. Bienvenidas y bienvenidos al Centro de Diseño de Intel Guadalajara' &

/services/amikoo/amikoomovement.sh 'lupe' 'leftdown' 'Lupe Arm Left Down'&& sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightdown' 'Lupe Arm Right Down' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'rightunfold' 'Lupe Arm Right Fold' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'leftunfold' 'Lupe Arm Left Fold' && sleep .6

#/services/voice/voice.sh 'on' 'espeak' 'spanish' \
/services/voice/voice.sh "amikoo" "default" "spanish" \
     'Mi nombre es Lupe, y junto a Leo, nos da mucho gusto recibirlos \
      en nuestra casa, su casa.' &

#/services/voice/voice.sh 'on' 'espeak' 'spanish' \
/services/voice/voice.sh "amikoo" "default" "spanish" \
     'Estamos muy emocionados de mostrarles los apasionantes mundos \
      de las Ciencias, la Tecnología, las Ingenierías y las Matemáticas. \
      Tendrémos el placer de introducirlos y guiarlos en nuestro \
      Centro de Visitantes.'

/services/amikoo/amikoomovement.sh 'lupe' 'leftfold' 'Lupe Arm Left Unfold' && sleep .9
/services/amikoo/amikoomovement.sh 'lupe' 'rightfold' 'Lupe Arm Right Unfold' && sleep .9
/services/amikoo/amikoomovement.sh 'lupe' 'rightup' 'Lupe Arm Right Up' && sleep .9
/services/amikoo/amikoomovement.sh 'lupe' 'leftup' 'Lupe Arm Left Up' && sleep .9

/services/amikoo/amikoomovement.sh 'lupe' 'headright' 'Lupe Head Right' && sleep .6
/services/amikoo/amikoomovement.sh 'lupe' 'headleft' 'Lupe Head Left' && sleep .6

# End of File
