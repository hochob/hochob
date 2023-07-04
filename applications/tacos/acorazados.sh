#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export ACORAZADO_PID=$$

#LOCAL_PHRASE="Soy guía en el emocionante Centro de Visitantes de Intel. \
#     Estoy lista para mostrarles lo interesante que es el mundo de las Ciencias, la Tecnología, \
#     las Ingenierías y las Matemáticas. Estoy programada para resolver las dudas que tengas,
#     y tambien hago café \
#    "

LOCAL_PHRASE="Hola amigos periodistas e influencers!. Qué gusto que hayan venido desde otros \
      lugares de la republica mexicana, así como de Argentina, Colombia, Perú y Chile. Estamos \
      muy emocionados de tenerlos en el Intel Guadalajara Disaing Center, fuente de innovación, \
      en America Latina. Esperamos que continuen disfrutando su recorrido por nuestro campus. \
      Sabían que somos el único laboratorio de Intel en toda America Latina dedicado al diseño \
      y validación de soluciones tecnológicas? Descubre esto y mucho más a lo largo de esta visita."



# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
