#!/bin/bash

set -x

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
export MQTT_CLIENT_ID=hochob-shopper-mood-monitor-cpp
echo $DEVICE

case $DEVICE in

     cpu)
         DEVICE=''
         ;;

     gpu)
         DEVICE='-b=2 -t=1'
         ;;
esac

/home/user/restricted-zone-notifier-cpp/build/monitor \
-m=/home/user/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/pedestrian-detection-adas-0002.bin \
-c=/home/user/Transportation/object_detection/pedestrian/mobilenet-reduced-ssd/dldt/pedestrian-detection-adas-0002.xml \
$DEVICE
