#!/bin/sh
# Launch script for mosquitto

# Wait for persistent storage to be available
while ! snapctl is-connected active-solution
do
    echo "Persistent storage not ready yet. Sleep"
    sleep 5
done

CONFIG_PATH=$SNAP_DATA/solutions/activeConfiguration/mosquitto
CONFIG_FILE=$CONFIG_PATH/mosquitto.conf

# Copy default config, if doesn't exists
if [ ! -e $CONFIG_FILE ]
then
    echo "Configuration file does not exists, copy default to $CONFIG_FILE"
    mkdir $CONFIG_PATH
    cp $SNAP/default_config.conf $CONFIG_FILE
else
    echo "Use existing configuration file $CONFIG_FILE"
fi

# Launch the broker

$SNAP/usr/sbin/mosquitto -c $CONFIG_FILE $@
