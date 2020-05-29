#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ALEGRIA_PID=$$
export ALEGRIA_PATH=$(readlink -f "$0")
export ALEGRIA_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Bienvenidos a mi casa, su casa. \
     Es un gusto conocerlas y conocerlos. Soy Lupe, \
     tengo  2 años robot y estudio el primer año de primaria robot. \
     Mis pasatiempos favoritos son compartir tiempo con mi familia, jugar al aire libre, \
     leer cuentos divertidos, hacer ejercicio y aprender con mis familiares y amigos \
     todo el conocimiento científico y tecnológico que está presente en nuestra vida cotidiana. \
     También soy guía en el emocionante Centro de Visitantes de Intel. \
     Estoy listo para mostrarles \
     lo interesante que es el mundo de las Ciencias, la Tecnología, \
     las Ingenierías y las Matemáticas. A nombre de cada uno de los grandes \
     seres humanos y robots que aquí trabajan les deseamos la mejor de las experiencias. \
     Muchas gracias por haber venido. \
    "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "on" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
