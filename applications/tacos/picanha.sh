#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export PICANHA_PID=$$

LOCAL_PHRASE="Intel es conocida por hacer procesadores para las computadoras \
            que usamos diario, pero eso es una pequeña parte. Intel en su busqueda \
            por mejorar la vida de las personas, crea y busca como mejorar componentes \
            para computadoras y servidores como procesadores y memorias. \
            Tambien desarrolla equipo especializado para mejorar aplicaciones con \
            Inteligencia Artificial, un ejemplo son los dispositivos inteligentes y \
            los autos autónomos. 
            "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
