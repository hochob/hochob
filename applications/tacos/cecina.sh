#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CECINA_PID=$$

LOCAL_PHRASE="Es llevar un pedazo de la inteligencia de las personas a las computadoras, usando matemáticas. \
             Y en algunos casos es más facil de lo que creen' \
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
