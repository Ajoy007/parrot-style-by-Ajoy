#!/bin/bash
# ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"
#banner
printf "\n"
printf "\n"

echo "		██████   █████  ██████  ██████   ██████  ████████       ███████ ████████ ██    ██ ██      ███████    "
echo "		██   ██ ██   ██ ██   ██ ██   ██ ██    ██    ██          ██         ██     ██  ██  ██      ██         "
echo "		██████  ███████ ██████  ██████  ██    ██    ██    █████ ███████    ██      ████   ██      █████      "
echo "		██      ██   ██ ██   ██ ██   ██ ██    ██    ██               ██    ██       ██    ██      ██         "
echo "		██      ██   ██ ██   ██ ██   ██  ██████     ██          ███████    ██       ██    ███████ ███████    "
printf "\n"
printf "\n"  
#options
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Install parrot theme\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m restore parrot theme\e[0m\n"

read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' VAR



restore (){

   file=./backup/.bashrc
   if [ -f "$file" ]
   then
      rm ~/.bashrc
      mv  ./backup/.bashrc ~/.bashrc
         echo $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Restored original theme... \e[0m\en'
        else
           
           echo $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] you have not installed parrot theme !! \e[0m\en'
           
    
         fi





}



if [ "$VAR" == "1" ];
then
   file=./backup/.bashrc
   if [ -f "$file" ]
	then
    	   echo $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] you have already installed parrot theme :). \e[0m\en'
        else
           cp ~/.bashrc ./backup
           rm ~/.bashrc 
   	   cp ./parrot_theme/.bashrc ~/.bashrc
           echo $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] parrot theme installed successfully... \e[0m\en'
           echo $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Restart your terminal... \e[0m\en'
    
         fi
   
   
  
elif [ "$VAR" == "2" ];
then
   
   restore

else 
   echo $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] invalid option \e[0m\en'
   
fi
