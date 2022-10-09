
#!/usr/bin/env bash

	# https://www.linuxquestions.org/questions/slackware-14/roman-numeral-conversion-4175482477/page2.html

#### Colors    ########################################################################################################

NC='\033[0m'		# No Color
GRE='\033[0;32m'	# Green
CYA='\033[0;36m'	# Cyan
LPUR='\033[1;35m'	# Light Purple

######################################################################################################## Colors ####



printf "input Roman number [${CYA} I V X L C D M${NC}]: ${GRE}"; declare -u input; read input; printf "${NC}\n"

number_00=${input}
number_01=$( echo ${number_00//IV/+4} )		# replace IV to +4
number_02=$( echo ${number_01//IX/+9} )		# replace IX to +9
number_03=$( echo ${number_02//XL/+40} )	# replace XL to +40
number_04=$( echo ${number_03//XC/+90} )	# replace XC to +90
number_05=$( echo ${number_04//CD/+400} )	# replace CD to +400
number_06=$( echo ${number_05//CM/+900} )	# replace CM to +900
number_07=$( echo ${number_06//I/+1} )		# replace I to +1
number_08=$( echo ${number_07//V/+5} ) 		# replace V to +5
number_09=$( echo ${number_08//X/+10} ) 	# replace X to +10
number_10=$( echo ${number_09//L/+50} )		# replace L to +50
number_11=$( echo ${number_10//C/+100} )	# replace C to +100
number_12=$( echo ${number_11//D/+500} )	# replace D to +500
number_13=$( echo ${number_12//M/+1000} )	# replace M to +10000
declare -i number_14; number_14=$number_13	# declare variable as number

	# shows conversion steps when starting function with "man" parameter: "roman-to-arabic man"
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


	printf "\nRoman number (${CYA}${input}${NC}) = Arabic number (${GRE}${number_14}${NC})" | cowsay
	

