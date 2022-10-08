#!/bin/bash

RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')" END="$(printf '\033[0m\e[0m')"

if [ $(id -u) -ne 0 ];then
	echo "[${RED}!${END}]${RED} Ejecute este script como root${END}"
	exit 1
fi

banner (){
	cat <<- EOF
${MAGENTA} ██████╗██████╗ ██████╗      ██╗  ██╗
${MAGENTA}██╔════╝██╔══██╗██╔══██╗     ╚██╗██╔╝
${MAGENTA}██║     ██████╔╝██████╔╝█████╗╚███╔╝ 
${MAGENTA}██║     ██╔═══╝ ██╔═══╝ ╚════╝██╔██╗ 
${MAGENTA}╚██████╗██║     ██║          ██╔╝ ██╗
${MAGENTA} ╚═════╝╚═╝     ╚═╝          ╚═╝  ╚═╝
${GREEN}          By:Alcatraz2033
	EOF
}

installer_dependenses (){
	which g++ &>/dev/null
	if [ $? -ne 0 ];then
		banner
		echo -e "\n[${CYAN}+${END}]${CYAN} Instalando g++${END}"
		sudo apt install g++ -y &>/dev/null
		clear
	fi  
}

installer (){
	chmod +x cpp-x &>/dev/null
	sudo mv cpp-x /usr/bin &>/dev/null
	echo -e "\n[${CYAN}+${END}]${CYAN} El programa cpp-x se instalo correctamente (Reinicie la terminal)${END}"
}

installer_dependenses
banner
installer
