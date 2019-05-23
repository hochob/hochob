#!/usr/bin/env bash

# Services

export PATH=$PATH:/services/amikoo/
export PATH=$PATH:/services/image/
export PATH=$PATH:/services/protocol/
export PATH=$PATH:/services/voice/

# Services Amikoo

export AMIKOO=amikoo

# Services Amikoo Nervous System Voice

export AMIKOO_VOICE=$AMIKOO/sound/speechsynthetizer
export AMIKOO_VOICE_ENGINE=$AMIKOO_VOICE/engine
export AMIKOO_VOICE_ENGLISH=$AMIKOO_VOICE/say
export AMIKOO_VOICE_ESPANOL=$AMIKOO_VOICE/decir

# Services Amikoo Multimedia

export AMIKOO_MULTIMEDIA=$AMIKOO/tradition
export AMIKOO_MULTIMEDIA_AUDIO=$AMIKOO_MULTIMEDIA/sound
export AMIKOO_MULTIMEDIA_IMAGE=$AMIKOO_MULTIMEDIA/image
export AMIKOO_MULTIMEDIA_VIDEO=$AMIKOO_MULTIMEDIA/video

# Services Protocol Mosquitto

export MQTT_SERVER_ADDRESS=172.17.0.1
export MQTT_SERVER_PORT=1883

# Services Voice

export SPEECH_FILE=/config/www/media/speech-file.wav
export SPEECH_MP3_FILE=/config/www/media/speech-mp3-file.wav

# Services Voice Espeak

export ESPEAK_SPEECH_FILE=/config/www/media/espeak-speech-file.wav
export ESPEAK_SPEECH_MP3_FILE=/config/www/media/espeak-speech-mp3-file.wav
