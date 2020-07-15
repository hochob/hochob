#!/bin/bash

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CABEZA_PID=$$

LOCAL_PHRASE[0]="¿Cómo estornuda un tomate? ¡¡¡Catsúp!!!!!" 
LOCAL_PHRASE[1]="¿Cual es la fruta que más se rie? La naranja ja ja ja" 
LOCAL_PHRASE[2]="¿Qué le dijo un pato a otro pato en un partido de fútbol?. Estamos empatados" 
LOCAL_PHRASE[3]="¿Por qué el mar no se seca?. Porque no tiene toalla." 
LOCAL_PHRASE[4]="¿Qué hace una abeja en el gimnasio?. Zumba" 
LOCAL_PHRASE[5]="Mamá, en la escuela me llaman despistado. Niño, esta no es tu casa." 
LOCAL_PHRASE[6]="¿Qué planeta va después de Marte?. Miércole" 
LOCAL_PHRASE[7]="¿Por que los elefantes no suben a las palmeras?. Porque le tienen miedo al coco"


# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

choosePhrase()
{
    rand=$[ $RANDOM % 7 ]
    LOCAL_PHRASE=${LOCAL_PHRASE[$rand]}
}

choosePhrase

/services/image/feh.sh "/config/www/media/HeyAmikoo/Image/Escenario.jpg" &

/services/voice/voice.sh "amikoo" "default" "spanish" "$LOCAL_PHRASE"

# End of File
