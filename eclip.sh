#!/bin/bash
# Captures a series of images with different shutter speed in burst mode
# $1 to $10: shutter speed for a set of 10 exposures (i.e. 1/4000,1/2000)
# $11: Interval in second
# $12: Number of repeat for the set of 10 exposures
# $13: iso (i.e. 200, 400)
# $14: Camera name
# $15: No. of frame for the set of exposures
#
# Usage: 
# iso 200 and f4
# ./eclip.sh 1/4000 1/8000 1/8000 1/4000 1/2000 1/500 1/125 1/30 1/15 1/8 0 6 200 D810A
#
# iso 200 and f8
# ./eclip.sh 1/800 1/4000 1/2000 1/800 1/500 1/125 1/30 1/8 1/4 1/2 0.5 1 200 D600 3


			Expo1=$1;

			Expo2=$2;

			Expo3=$3;

			Expo4=$4;

			Expo5=$5;

			Expo6=$6;

			Expo7=$7;

			Expo8=$8;

			Expo9=$9;

			Expo10=${10};
			
			intval=${11};
			
			NoOf_Re=${12};
			
			ChangeIso=${13};
			
			#Dcam=${14};
			
			#NoOfBracket=${15};
		
#########################################
case ${14} in

	D810A)
        Dcam="Nikon DSC D810A"
		;;
	D5300)
        Dcam="Nikon DSC D5300"
		;;		
    D600)
        Dcam="Nikon DSC D600"
		;;
    	*) echo "${14} is not support"
		exit 1
		;;
esac
#########################################
sudo gphoto2 --camera="${Dcam}" --set-config capturetarget=1 --set-config iso=$ChangeIso;
#sleep 1;

	for ((i=${NoOf_Re}; i>0; i--));
		do
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo1 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo1 --trigger-capture;
			 if [[ ${15} = 1 ]]; then
				continue      # Skip rest of this particular loop iteration.
			 fi	
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo2 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo2 --trigger-capture;
			 if [[ ${15} = 2 ]]; then
				continue      # Skip rest of this particular loop iteration.
			 fi			
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo3 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo3 --trigger-capture;
			 if [[ ${15} = 3 ]]; then
				continue 1     # Skip rest of this particular loop iteration.
			 fi	
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo4 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo4 --trigger-capture;
			 if [[ ${15} = 4 ]]; then
				continue 1     # Skip rest of this particular loop iteration.
			 fi
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo5 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo5 --trigger-capture;
			 if [[ ${15} = 5 ]]; then
				continue      # Skip rest of this particular loop iteration.
			 fi
			 sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo6 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo6 --trigger-capture;
			 if [[ ${15} = 6 ]]; then
				continue      # Skip rest of this particular loop iteration.
			 fi	
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo7 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo7 --trigger-capture;
			 if [[ ${15} = 7 ]]; then
				continue      # Skip rest of this particular loop iteration.
			 fi	
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo8 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo8 --trigger-capture;
			 if [[ ${15} = 8 ]]; then
				continue      # Skip rest of this particular loop iteration.
			 fi	
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo9 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo9 --trigger-capture;
			 if [[ ${15} = 9 ]]; then
				continue      # Skip rest of this particular loop iteration.
			 fi				
			sleep $intval;
#			sudo gphoto2 --set-config /main/capturesettings/shutterspeed2=$Expo10 --trigger-capture;
			sudo gphoto2 --camera="${Dcam}" --set-config /main/capturesettings/shutterspeed2=$Expo10 --trigger-capture;
			sleep $intval;
		done
		exit 0;