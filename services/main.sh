#!/usr/bin/env bash

# Services

export PATH=$PATH:/services/amikoo/
export PATH=$PATH:/services/image/
export PATH=$PATH:/services/protocol/

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
