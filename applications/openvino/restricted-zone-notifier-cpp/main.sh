#!/bin/bash

# =============================================================================
# Variables
# =============================================================================

OPENVINO_INSTALLATION=/opt/intel/openvino/

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

cd $HOME

source $OPENVINO_INSTALLATION/bin/setupvars.sh

export MQTT_SERVER=172.17.0.1:1883
export MQTT_CLIENT_ID=restricted-zone-notifier-cpp

case $TARGET in

     cpu)
         TARGET='-b=2 -t=0'
         ;;

     gpu)
         TARGET='-b=2 -t=1'
         ;;

     vpu)
         TARGET='-b=2 -t=3'
         ;;
esac

/home/user/restricted-zone-notifier-cpp/build/monitor \
  -m=/home/user/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/pedestrian-detection-adas-0002.bin \
  -c=/home/user/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/pedestrian-detection-adas-0002.xml \
  -d=$DEVICE \
  $TARGET
