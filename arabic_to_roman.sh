#!/usr/bin/env bash
 
# solution from https://www.youtube.com/watch?v=nrVIlhtoE3Y&t=2227s

#### Colors ########################################################

NC='\033[0m' 		# No Color
PUR='\033[0;35m' 	# Purple
CYA='\033[0;36m'	# Cyan
GRE='\033[0;32m'	# Green
YEL='\033[0;33m'	# Yellow

######################################################## Colors	####



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



																# script by {LK} 09-2022
