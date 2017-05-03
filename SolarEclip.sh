#!/bin/bash

# ./SolarEclip.sh 1/2000 1/4000 1/500 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 200 D810A 3 1/2000 1/4000 1/2000 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 400 10 1/2000 1/4000 1/2000 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 800 10 30s 5 60s 5 30s

# ./SolarEclip.sh 1/2000 1/2000 1/2000 1/2000 1/2000 1/2000 1/2000 1/2000 1/2000 1/2 0.5 10 200 D600 10 1/2000 1/4000 1/2000 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 400 10 1/2000 1/4000 1/2000 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 800 10 30s 20 60s 20 30s


##################
			Dcam=${14};
			TimeA=${44};
			RestA=${45};	# Not less than 5s would be prevent DSLR from busy (I/O) error
			TimeB=${46};
			RestB=${47};	# Not less than 5s would be prevent DSLR from busy (I/O) error
			TimeC=${48};
			
######### Set A	#######
			ExpoA1=$1;

			ExpoA2=$2;

			ExpoA3=$3;

			ExpoA4=$4;

			ExpoA5=$5;

			ExpoA6=$6;

			ExpoA7=$7;

			ExpoA8=$8;

			ExpoA9=$9;

			ExpoA10=${10};
			
			intvalA=${11};
			
			NoOf_ReA=${12};
			
			ChangeIsoA=${13};
			
			NoOfBracketA=${15};

######### Set B	#######
			ExpoB1=${16};

			ExpoB2=${17};

			ExpoB3=${18};

			ExpoB4=${19};

			ExpoB5=${20};

			ExpoB6=${21};

			ExpoB7=${22};

			ExpoB8=${23};

			ExpoB9=${24};

			ExpoB10=${25};
			
			intvalB=${26};
			
			NoOf_ReB=${27};
			
			ChangeIsoB=${28};
			
			NoOfBracketB=${29};

######### Set C	#######

			ExpoC1=${30};

			ExpoC2=${31};

			ExpoC3=${32};

			ExpoC4=${33};

			ExpoC5=${34};

			ExpoC6=${35};

			ExpoC7=${36};

			ExpoC8=${37};

			ExpoC9=${38};

			ExpoC10=${39};
			
			intvalC=${40};
			
			NoOf_ReC=${41};
			
			ChangeIsoC=${42};
			
			NoOfBracketC=${43};


timeout $TimeA ./eclip.sh $ExpoA1 $ExpoA2 $ExpoA3 $ExpoA4 $ExpoA5 $ExpoA6 $ExpoA7 $ExpoA8 $ExpoA9 $ExpoA10 $intvalA $NoOf_ReA $ChangeIsoA $Dcam $NoOfBracketA
sleep $RestA
timeout $TimeB ./eclip.sh $ExpoB1 $ExpoB2 $ExpoB3 $ExpoB4 $ExpoB5 $ExpoB6 $ExpoB7 $ExpoB8 $ExpoB9 $ExpoB10 $intvalB $NoOf_ReB $ChangeIsoB $Dcam $NoOfBracketB
sleep $RestB
timeout $TimeC ./eclip.sh $ExpoC1 $ExpoC2 $ExpoC3 $ExpoC4 $ExpoC5 $ExpoC6 $ExpoC7 $ExpoC8 $ExpoC9 $ExpoC10 $intvalC $NoOf_ReC $ChangeIsoC $Dcam $NoOfBracketC