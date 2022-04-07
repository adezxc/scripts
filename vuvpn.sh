#!/usr/bin/bash


if [[ $BW_SESSION == "" ]]
then
	BW_SESSION=$(bw unlock --raw)	
fi
user=1450915
password=$(bw get password $user --session $BW_SESSION)

echo $password | openconnect vpn2.vu.lt --user=${user} --passwd-on-stdin

