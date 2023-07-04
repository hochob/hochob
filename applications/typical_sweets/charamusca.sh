#!/bin/sh

# =============================================================================
# Variables
# =============================================================================

. /services/main.sh

export CHARAMUSCA_PID=$$
export CHARAMUSCA_PATH=$(readlink -f "$0")
export CHARAMUSCA_DIRECTORY=$(dirname "$MECCANOID_PATH")

LOCAL_PHRASE="¿Qué es Intel? ¿Cómo y en dónde nació Intel? ¿Quiénes lo fundaron? Desde que llegaron hoy a Intel, ya han escuchado que esta empresa fue la creadora de los microprocesadores, y fue gracias a sus fundadores estadounidenses, Gordon Mur, Robert Noys, y Andy Gruv, ingenieros inteligentes, apasionados y con muchísima creatividad para desarrollar mecanismos que pudieran facilitar cálculos y procesos matemáticos. Sin embargo, antes de llegar a la invención de los microprocesadores, se dedicaban a hacer memorias para dispositivos electrónicos ¿Ustedes han hecho uso de alguna memoria? o ¿saben qué dispositivos han utilizado que cuenten con memorias? Conforme fue pasando el tiempo, se dieron cuenta que podían innovar de formas distintas, y no solo hacer memorias para guardar información. Así que pensaron en trabajar en algo que pudiera procesar todo tipo de  información, y dieron lugar a la invención y desarrollo del microprocesador. Es tal el éxito de su creación, que inician su empresa en 1968 en California Estados Unidos; dándole el nombre de Intel que es la abreviatura de las palabras Integreited Electronic. No se detuvo la historia ahí, más talento, entre ingenieros, investigadores, matemáticos, físicos y científicos, continuaron perfeccionando el microprocesador, haciéndolo cada vez más rápido y pequeño. En su cuarta edición del microprocesador, Intel logra la revolución de la microcomputadora con el diseño del 8080, y a partir de ahí,  Intel desarrolla el 8086 y 8088. Con estos dos procesadores obtuvieron en solamente un año 2500 premios de diseño ¡Imagínense cuántos premios en un año! Fue tal el impacto y reconocimiento al trabajo que hacía Intel, que no fue suficiente tener sede en California, sino que comenzaron a expandirse por el mundo; un ejemplo de ello es Intel GDC, es decir, Intel Guadalajara Disain Center. Para conocer lo que hace Intel Guadalajara, identifica en esa misma zona donde estás el aparador con el diseño del calendario azteca ¿ya viste cuál? Ve hacia él. "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

/services/voice/voice.sh "Triki" "espeak" "spanish" "$LOCAL_PHRASE"

# End of File
