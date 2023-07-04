#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CAMOTES_PID=$$
export CAMOTES_PATH=$(readlink -f "$0")
export CAMOTES_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Hace mucho tiempo existieron civilizaciones muy inteligentes, que lograron hacer descubrimientos que cambiaron la forma de vivir, y desarrollaron tecnología que aún hoy en día utilizamos. Entre estas civilizaciones como Babilonia, India y China, se encontraban los mayas también, pero, ¿Qué fue lo que hicieron los mayas?, o ¿Por qué son tan importantes?. Los mayas han sido un pueblo muy avanzado, sin duda una de las grandes civilizaciones mundiales. Uno de los aspectos destacados de su cultura fue su gran avance en las matemáticas, pues su sistema numérico desarrollado de forma independiente al resto del mundo, era muy avanzado y complejo; tanto que hasta contaban con la noción del cero y su simbología; fue la primera cultura que representó en América el número 0. Es decir, de alguna manera, los mayas entendían el concepto de “cero” y “nada”. Y se preguntarán ¿de qué manera trascendió este uso de cero y su sistema numérico con la tecnología?. Gracias al uso de 0 y 1, fue posible crear un lenguaje binario, (es decir solo de solo dos números), con el cual se constituyó una forma de comunicación entre las máquinas electronicas y los humanos. A su vez, a partir de este sistema binario y otros componentes tecnológicos y electrónicos se pudo inventar el microprocesador, y ya se imaginarán qué empresa pudo haber sido la creadora de esta magnífica invención. ¿Pueden adivinar cuál?.  ¡Claro, Intel!. ¿Y cómo es que pasó todo esto? Pasa al siguiente exhibidor de tu derecha donde tendrás la respuesta"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "Triki" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
