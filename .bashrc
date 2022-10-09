#!/usr/bin/env bash

#### Colors	###########################################

NC='\033[0m' 		# No Color
RED='\033[0;31m'	# RED
PUR='\033[0;35m' 	# Purple
CYA='\033[0;36m'	# Cyan
GRE='\033[0;32m'	# Green
YEL='\033[0;33m'	# Yellow
GRA='\033[0;37m'	# Gray
BRO='\033[1;30m'	# Brown
LRED='\033[1;31m'	# Light RED
LPUR='\033[1;35m' 	# Light Purple
LCYA='\033[1;36m'	# Light Cyan
LGRE='\033[1;32m'	# Light Green
BLUE='\e[34m'		# Blue

########################################### Colors ####
  
  function arabic2roman () {	# converts arabic number to roman number
 
# solution from https://www.youtube.com/watch?v=nrVIlhtoE3Y&t=2227s

printf "input Arabic number: ${GRE}";declare -i input; read input
printf "${NC}\n"

number_01=$(										# vrites I "input" times (input * I) in variable
 for i in $(eval echo "{1..$input}")
	do
		printf "I"
	done
				)

number_02=$(	echo ${number_01//IIIII/V}	)		# replace IIIII to V	- number    5 (V)
number_03=$(	echo ${number_02//IIII/IV}	)		# replace IIII to IV	- number    4 (IV)
number_04=$(	echo ${number_03//VV/X}		)		# replace VV to X	- number   10 (X)
number_05=$(	echo ${number_04//VIV/IX}	)		# replace VIV to IX	- number    9 (IX)
number_06=$(	echo ${number_05//XXXXX/L}	)		# replace XXXXX to L	- number   50 (L)
number_07=$(	echo ${number_06//XXXX/XL}	)		# replace XXXX to XL	- number   40 (XL)
number_08=$(	echo ${number_07//LL/C}		)		# replace LL to C	- number  100 (C)
number_09=$(	echo ${number_08//LXL/XC}	)		# replace LXL to XC	- number   90 (XC)
number_10=$(	echo ${number_09//CCCCC/D}	)		# replace CCCCC to D	- number  500 (D)
number_11=$(	echo ${number_10//CCCC/CD}	)		# replace CCCC to CD	- number  400 (CD)
number_12=$(	echo ${number_11//DD/M}		)		# replace DD to M	- number 1000 (M)
number_13=$(	echo ${number_12//DCD/CM}	)		# replace DCD to CM	- number  900 (CM)

# shows conversion steps when starting function with "man" parameter: "arabic2roman man"
	if [[ ${1,,} = "man" ]]	
		then
	
		printf -v man_a2r_00 "\\n\n${PUR}Conversion steps: ${NC}\n\n"
		printf -v man_a2r_01 "${GRE}01${NC} (input->I) - ${CYA}${number_01}${NC}\n\n"
		printf -v man_a2r_02 "${GRE}02${NC} (IIIII->V) - ${CYA}${number_02}${NC}\n\n"
		printf -v man_a2r_03 "${GRE}03${NC} (IIII->IV) - ${CYA}${number_03}${NC}\n\n"
		printf -v man_a2r_04 "${GRE}04${NC} (VV->X) - ${CYA}${number_04}${NC}\n\n"
		printf -v man_a2r_05 "${GRE}05${NC} (VIV->IX) - ${CYA}${number_05}${NC}\n\n"
		printf -v man_a2r_06 "${GRE}06${NC} (XXXXX->L) - ${CYA}${number_06}${NC}\n\n"
		printf -v man_a2r_07 "${GRE}07${NC} (XXXX->XL) - ${CYA}${number_07}${NC}\n\n"
		printf -v man_a2r_08 "${GRE}08${NC} (LL->C) - ${CYA}${number_08}${NC}\n\n"
		printf -v man_a2r_09 "${GRE}09${NC} (LXL->XC) - ${CYA}${number_09}${NC}\n\n"
		printf -v man_a2r_10 "${GRE}10${NC} (CCCCC->D) - ${CYA}${number_10}${NC}\n\n"
		printf -v man_a2r_11 "${GRE}11${NC} (CCCC->CD) - ${CYA}${number_11}${NC}\n\n"
		printf -v man_a2r_12 "${GRE}12${NC} (DD->M) - ${CYA}${number_12}${NC}\n\n"
		printf -v man_a2r_13 "${GRE}13${NC} (DCD->CM) - ${CYA}${number_13}${NC}\n\n"

		printf "${man_a2r_00}${man_a2r_01}${man_a2r_02}${man_a2r_03}${man_a2r_04}${man_a2r_05}${man_a2r_06}${man_a2r_07}${man_a2r_08}${man_a2r_09}${man_a2r_10}${man_a2r_11}${man_a2r_12}${man_a2r_13}"
		printf "\n\n"
		printf "Arabic number (${GRE}${input}${NC}) = Roman number ${YEL}${number_13}${NC}\n"

# cow say output	
	elif [[ ${1,,} = "cow" ]]
		then
			printf -v cwsayS "\ Arabic number (${GRE}${input}${NC}) = Roman number ${YEL}${number_13}${NC}"
			cws

# function without any variable or with some random "text" variable
	else
		
		printf "Arabic number (${GRE}${input}${NC}) = Roman number ${YEL}${number_13}${NC}\n"

		fi

																			#fn by {LK} 09-2022																					#fn by {LK} 09-2022
								}

		alias {roman,ROMAN,2roman,2ROMAN}='arabic2roman'


	function roman2arabic () {	# Roman number to Arabic number conversion
printf "input Roman number [${CYA} I V X L C D M${NC}]: ${GRE}"; declare -u input; read input; printf "${NC}\n"

number_00=${input}
number_01=$(	echo ${number_00//IV/+4}	)	# replace IV to +4
number_02=$(	echo ${number_01//IX/+9}	)	# replace IX to +9
number_03=$(	echo ${number_02//XL/+40}	)   # replace XL to +40
number_04=$(	echo ${number_03//XC/+90}	)   # replace XC to +90
number_05=$(	echo ${number_04//CD/+400}	)   # replace CD to +400
number_06=$(	echo ${number_05//CM/+900}	)   # replace CM to +900
number_07=$(	echo ${number_06//I/+1}		)   # replace I to +1
number_08=$(	echo ${number_07//V/+5}		)   # replace V to +5
number_09=$(	echo ${number_08//X/+10}	)   # replace X to +10
number_10=$(	echo ${number_09//L/+50}	)   # replace L to +50
number_11=$(	echo ${number_10//C/+100}	)   # replace C to +100
number_12=$(	echo ${number_11//D/+500}	)   # replace D to +500
number_13=$(	echo ${number_12//M/+1000}	)   # replace M to +10000
declare -i number_14; number_14=$number_13		# declare variable as number
 

# shows conversion steps when starting function with "man" parameter: "arabic2roman man"
	if [[ ${1,,} = "man" ]]	
		then
printf "Roman input: ${CYA}$number_00${NC}\n"
printf "replace ${CYA}IV${NC} to ${GRE}   +4${NC}: ${LPUR}$number_01${NC}\n"
printf "replace ${CYA}IX${NC} to ${GRE}   +9${NC}: ${LPUR}$number_02${NC}\n"
printf "replace ${CYA}XL${NC} to ${GRE}  +40${NC}: ${LPUR}$number_03${NC}\n"
printf "replace ${CYA}XC${NC} to ${GRE}  +90${NC}: ${LPUR}$number_04${NC}\n"
printf "replace ${CYA}CD${NC} to ${GRE} +400${NC}: ${LPUR}$number_05${NC}\n"
printf "replace ${CYA}CM${NC} to ${GRE} +900${NC}: ${LPUR}$number_06${NC}\n"
printf "replace ${CYA}I ${NC} to ${GRE}   +1${NC}: ${LPUR}$number_07${NC}\n"
printf "replace ${CYA}V ${NC} to ${GRE}   +5${NC}: ${LPUR}$number_08${NC}\n"
printf "replace ${CYA}X ${NC} to ${GRE}  +10${NC}: ${LPUR}$number_09${NC}\n"
printf "replace ${CYA}L ${NC} to ${GRE}  +50${NC}: ${LPUR}$number_10${NC}\n"
printf "replace ${CYA}C ${NC} to ${GRE} +100${NC}: ${LPUR}$number_11${NC}\n"
printf "replace ${CYA}D ${NC} to ${GRE} +500${NC}: ${LPUR}$number_12${NC}\n"
printf "replace ${CYA}M ${NC} to ${GRE}+1000${NC}: ${LPUR}$number_13${NC}\n"
printf "\nArabic number = ${GRE}$number_14${NC}\n"

fi

    printf "\nRoman number (${CYA}${input}${NC}) = Arabic number (${GRE}${number_14})"


#https://www.linuxquestions.org/questions/slackware-14/roman-numeral-conversion-4175482477/page2.html
}



    function cws {		# COW says for script 0.1
printf "\n"
	echo "cow says :"
echo " "
echo "   ------------------------------------- "
printf "   "; printf "$cwsayS" ; echo "        "
echo "     ----------------------------------- "
echo "        \   ^__^			    "
echo "         \  (oo)\_______		  "
echo "            (__)\       )\/\		"
echo "                ||----w |			"
echo "                ||     ||			"
echo "					    "
	                }

