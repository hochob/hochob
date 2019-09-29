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

/home/user/shopper-mood-monitor-cpp/build/monitor \
-m=/home/user/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/face-detection-adas-0001.bin \
-c=/home/user/Transportation/object_detection/face/pruned_mobilenet_reduced_ssd_shared_weights/dldt/face-detection-adas-0001.xml \
-sm=/home/user/Retail/object_attributes/emotions_recognition/0003/dldt/emotions-recognition-retail-0003.bin \
-sc=/home/user/Retail/object_attributes/emotions_recognition/0003/dldt/emotions-recognition-retail-0003.xml \
$DEVICE
