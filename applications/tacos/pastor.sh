#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export PASTOR_PID=$$

LOCAL_PHRASE="Aquí conocerán el pasado, el presente y el futuro de Intel. \
            Al final encontrarán una sección donde podrán jugar y maravillarse \
            con la ciencia. Tambien encontrarán un piano cósmico. \
            "
# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/video/video.sh "off" "/config/www/media/VisitorsCenter/Video/VisitorsCenter.mp4" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
