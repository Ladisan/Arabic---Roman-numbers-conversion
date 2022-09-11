#!/usr/bin/env bash
 
# solution from https://www.youtube.com/watch?v=nrVIlhtoE3Y&t=2227s

#### Colors	########################################################

NC='\033[0m' 		# No Color
PUR='\033[0;35m' 	# Purple
CYA='\033[0;36m'	# Cyan
GRE='\033[0;32m'	# Green
BLUE='\e[34m'		# Blue
YEL='\033[0;33m'	# Yellow

######################################################## Colors	####

printf "input number: ${GRE}";declare -i input; read input
printf "${NC}\n"

number_01=$(										# vrites I input times (input * I) in variable
 for i in $(eval echo "{1..$input}")
	do
		printf "I"
	done
				)			

number_02=$(	echo ${number_01//IIIII/V}	)		# replace IIIII to V	- number    5 (V)
number_03=$(	echo ${number_02//IIII/IV}	)		# replace IIII to IV	- number    4 (IV)
number_04=$(	echo ${number_03//VV/X}		)		# replace VV to X		- number   10 (X)
number_05=$(	echo ${number_04//VIIII/IX}	)		# replace VIIII to IX	- number    9 (IX)
number_06=$(	echo ${number_05//XXXXX/L}	)		# replace XXXXX to L	- number   50 (L)
number_07=$(	echo ${number_06//XXXX/XL}	)		# replace XXXX to XL	- number   40 (XL)
number_08=$(	echo ${number_07//LL/C}		)		# replace LL to C		- number  100 (C)
number_09=$(	echo ${number_08//LXL/XC}	)		# replace LXL to XC		- number   90 (XC)
number_10=$(	echo ${number_09//CCCCC/D}	)		# replace CCCCC to D	- number  500 (D)
number_11=$(	echo ${number_10//CCCC/CD}	)		# replace CCCC to CD	- number  400 (CD)
number_12=$(	echo ${number_11//DD/M}		)		# replace DD to M		- number 1000 (M)
number_13=$(	echo ${number_12//DCD/CM}	)		# replace DCD to CM		- number  900 (CM)


printf "Arabic number (${GRE}${input}${NC}) = Roman number ${YEL}${number_13}${NC}"


# uncoment next line to display conversion steps
# printf "\n\n\n${PUR}Conversion steps: ${NC}\n\n${GRE}01${NC} - ${CYA}${number_01}${NC}\n${GRE}02${NC} - ${BLUE}${number_02}${NC}\n${GRE}03${NC} - ${CYA}${number_03}${NC}\n${GRE}04${NC} - ${BLUE}${number_04}${NC}\n${GRE}05${NC} - ${CYA}${number_05}${NC}\n${GRE}06${NC} - ${BLUE}${number_06}${NC}\n${GRE}07${NC} - ${CYA}${number_07}${NC}\n${GRE}08${NC} - ${BLUE}${number_08}${NC}\n${GRE}09${NC} - ${CYA}${number_09}${NC}\n${GRE}10${NC} - ${BLUE}${number_10}${NC}\n${GRE}11${NC} - ${CYA}${number_11}${NC}\n${GRE}12${NC} - ${BLUE}${number_12}${NC}\n${GRE}13${NC} - ${CYA}${number_13}${NC}\n"
