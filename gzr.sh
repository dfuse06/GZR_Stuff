#!/bin/sh

CL_GRN="\033[32m"
CL_RST="\033[0m"

echo -e ${CL_GRN}"                                                            ${CL_GRN}";
echo -e ${CL_GRN}"                                                            ${CL_GRN}";
echo -e ${CL_GRN}"        GGGGGGGGGGGGGZZZZZZZZZZZZZZZZZZZRRRRRRRRRRRRRRRRR   ${CL_GRN}";
echo -e ${CL_GRN}"     GGG::::::::::::GZ:::::::::::::::::ZR::::::::::::::::R  ${CL_GRN}";
echo -e ${CL_GRN}"   GG:::::::::::::::GZ:::::::::::::::::ZR::::::RRRRRR:::::R ${CL_GRN}";
echo -e ${CL_GRN}"  G:::::GGGGGGGG::::GZ:::ZZZZZZZZ:::::Z RR:::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}" G:::::G       GGGGGGZZZZZ     Z:::::Z    R::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}"G:::::G                      Z:::::Z      R::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}"G:::::G                     Z:::::Z       R::::RRRRRR:::::R ${CL_GRN}";
echo -e ${CL_GRN}"G:::::G    GGGGGGGGGG      Z:::::Z        R:::::::::::::RR  ${CL_GRN}";
echo -e ${CL_GRN}"G:::::G    G::::::::G     Z:::::Z         R::::RRRRRR:::::R ${CL_GRN}";
echo -e ${CL_GRN}"G:::::G    GGGGG::::G    Z:::::Z          R::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}"G:::::G        G::::G   Z:::::Z           R::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}" G:::::G       G::::GZZZ:::::Z     ZZZZZ  R::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}"  G:::::GGGGGGGG::::GZ::::::ZZZZZZZZ:::ZRR:::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}"   GG:::::::::::::::GZ:::::::::::::::::ZR::::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}"     GGG::::::GGG:::GZ:::::::::::::::::ZR::::::R     R:::::R${CL_GRN}";
echo -e ${CL_GRN}"        GGGGGG   GGGGZZZZZZZZZZZZZZZZZZZRRRRRRRR     RRRRRRR${CL_GRN}";
echo -e ${CL_GRN}"                                                            ${CL_GRN}";
echo -e ${CL_GRN}"                                                            ${CL_RST}";
echo -e "                 Repo init and sync GZR sources                               ";
echo "                                                                                 ";
while true
do 
  PS3='Pick a rom!:'
  options=("Tesla Rom" "ValidusOs" "TipsyOs" "Quit")
  select opt in "${options[@]}"
do
  case $opt in    
     "Tesla Rom")
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo "Repo init for Tesla"
        sleep 5
        repo init -u https://github.com/TeslaRom-N/manifest.git -b n7.1.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        break; 
        ;;
     "ValidusOs") 
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo "Repo init for Validus"
        sleep 5
        repo init -u https://github.com/GZR-ValidusOS/manifest.git -b n7.1.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        break; 
        ;;
     "TipsyOs")
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo "Repo init for Tipsy"
        sleep 5
        repo init -u git://github.com/TipsyOs/platform_manifest.git -b n7.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        break; 
        ;;  
     "Quit")
        exit
        ;;
        *) echo invalid option;;
    esac
done
done
