#!/bin/bash

# Script to pulse a Raspberry Pi GPIO line using gpiod tools.
# # Usage: ./power_pulse.sh <milliseconds>

# -- Configuration --
GPIO_CHIP=0
GPIO_LINE=4
PULSE_ON_VALUE=1

# 1. Check if the parameter was provided
if [ -z "$1" ]; then
        echo "ERROR: Please provide the pulse duration in milliseoncds (ms) as a parameter."
        echo "Example: ./power_pulse.sh 300"
        exit 1
fi

# 2. Get the input parameter
MS_DURATION=$1

# 3. Execute the power pulse
gpioset --chip $GPIO_CHIP --toggle $MS_DURATION,0 $GPIO_LINE=$PULSE_ON_VALUE