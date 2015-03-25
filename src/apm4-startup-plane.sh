#!/bin/bash

#This script is launched automatically in Erle-Brain
#on every boot and loads everything that the board needs to
# launch the fixed-wing autopilot

APM_BIN_DIR="/apps/apm-plane.erle/current/src"

date
while :; do
	# Start copter, modify if other vehicle is needed
	#./ArduCopter.elf -A /dev/ttyUSB0 -B /dev/ttyO5 -C udp:11.0.0.2:6000
	#./ArduCopter.elf -A udp:192.168.7.1:6000 -B /dev/ttyO5
	#./ArduCopter.elf -A udp:11.0.0.2:6000 -B /dev/ttyO5
	#./ArduCopter.elf -A udp:10.0.0.2:6000 -B /dev/ttyO5
	#./ArduCopter.elf -A udp:11.0.0.2:6000 -B /dev/ttyO5 -C /dev/ttyO4
        #./ArduCopter.elf -A /dev/ttyO0 -B /dev/ttyO5
	#./ArduCopter.elf -A tcp:*:6000:wait -B /dev/ttyO5
	#./ArduCopter.elf -B /dev/ttyO5
	#./ArduCopter.elf -A udp:11.0.0.2:6000 -B /dev/ttyO5 -C udp:127.0.0.1:6000
	#./ArduCopter.elf -A udp:11.0.0.2:6000 -B /dev/ttyO5 -C udp:127.0.0.1:6000

	# copter with WiFi and GPS
	$APM_BIN_DIR/ArduPlane.elf -A udp:10.0.0.2:6000 -B /dev/ttyO5 

	# copter with WiFi, GPS and mavros
	#  apparently, launching mavros this way causes trouble with the autopilot and only one of the channels
	#  gets the information. Use gcs_bridge in mavros instead, or review the code of the autopilot
	#$APM_BIN_DIR/ArduCopter.elf -A udp:10.0.0.2:6000 -B /dev/ttyO5 -C udp:127.0.0.1:6001
done


