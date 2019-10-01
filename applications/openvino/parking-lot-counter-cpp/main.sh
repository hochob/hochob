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
export MQTT_CLIENT_ID=hochob-parking-lot-counter-cpp

case $DEVICE in

     cpu)
         DEVICE='-b=2 -t=0'
         ;;

     gpu)
         DEVICE='-b=2 -t=1'
         ;;

     vpu)
         DEVICE='-b=2 -t=3'
         ;;

esac

/home/user/parking-lot-counter-cpp/build/monitor \
  -m=/home/user/Transportation/object_detection/pedestrian-and-vehicle/mobilenet-reduced-ssd/dldt/pedestrian-and-vehicle-detector-adas-0001.bin \
  -c=/home/user/Transportation/object_detection/pedestrian-and-vehicle/mobilenet-reduced-ssd/dldt/pedestrian-and-vehicle-detector-adas-0001.xml \
  $DEVICE \
  -i=$VIDEO
