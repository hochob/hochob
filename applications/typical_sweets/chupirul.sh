#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CHUPIRUL_PID=$$
export CHUPIRUL_PATH=$(readlink -f "$0")
export CHUPIRUL_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="Intel Guadalajara Disain Center, GDC, no era como lo conocen hoy. Todo comenzó con una pequeña empresa de Telecomunicaciones que había creado  Jesús Palomino,  en la que solo trabajaban 34 ingenieros. Sin embargo Intel se dio cuenta del talento que se tenía en México en dicha empresa, y decidió apostarle para comenzar operaciones aquí en Guadalajara. Pueden ver en la pantalla algunos de los datos más representativos y fotos de aquel entonces. Desde el principio, Intel integró rápidamente a estos ingenieros como parte de su corporación, al mismo tiempo que empezaron más responsabilidades y proyectos qué cumplir con impacto mundial. Guadalajara fue el primer lugar en Latinoamérica que adopta Intel para que sea un laboratorio de investigación,  comenzando sus operaciones en el 2001. Hoy por hoy  en Intel GDC son más de 1,400 personas trabajando dedicados a la investigación e innovación. Algunos datos curiosos de Intel GDC son: Ha adquirido proyectos con impacto mundial y en donde varios chips y circuitos desarrollados han salido al mercado. Las y los ingenieros que trabajan aquí, tienen la posibilidad de colaborar con otros profesionales de distintas partes de Europa, Asia y América. Intel trabaja muy de cerca con el gobierno, las universidades y la sociedad civil para el desarrollo del talento y de la innovación. "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "Triki" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
