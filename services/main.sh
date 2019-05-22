#!/usr/bin/env bash

# Services

export PATH=$PATH:/services/amikoo/
export PATH=$PATH:/services/image/
export PATH=$PATH:/services/protocol/
export PATH=$PATH:/services/voice/

# Services Amikoo

export AMIKOO=amikoo

# Services Amikoo Nervous System Voice

AMIKOO_VOICE=$AMIKOO/sound/speechsynthetizer
AMIKOO_VOICE_ENGINE=$AMIKOO_VOICE/engine
AMIKOO_VOICE_ENGLISH=$AMIKOO_VOICE/say
AMIKOO_VOICE_ESPANOL=$AMIKOO_VOICE/decir

# Services Protocol Mosquitto

export MQTT_SERVER_ADDRESS=172.17.0.1
export MQTT_SERVER_PORT=1883

# Services Voice

export SPEECH_FILE=/config/www/media/speech-file.wav
export SPEECH_MP3_FILE=/config/www/media/speech-mp3-file.wav

# Services Voice Espeak

export ESPEAK_SPEECH_FILE=/config/www/media/espeak-speech-file.wav
export ESPEAK_SPEECH_MP3_FILE=/config/www/media/espeak-speech-mp3-file.wav
