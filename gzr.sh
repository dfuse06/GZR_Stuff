#!/bin/bash

CL_BLU="\033[34m"
CL_RED="\033[31m"
CL_GRN="\033[32m"
CL_RST="\033[0m"
CL_CYA="\033[36m"
CL_YEL="\033[33m"

clear
while :
do
    echo -e ${CL_CYA}"                         ${CL_CYA}";
    echo -e ${CL_CYA}" ██████╗ ███████╗██████╗ ${CL_CYA}";
    echo -e ${CL_CYA}"██╔════╝ ╚══███╔╝██╔══██╗${CL_CYA}";
    echo -e ${CL_CYA}"██║  ███╗  ███╔╝ ██████╔╝${CL_CYA}";
    echo -e ${CL_CYA}"██║   ██║ ███╔╝  ██╔══██╗${CL_CYA}";
    echo -e ${CL_CYA}"╚██████╔╝███████╗██║  ██║${CL_CYA}";
    echo -e ${CL_CYA}" ╚═════╝ ╚══════╝╚═╝  ╚═╝${CL_CYA}";
    echo -e ${CL_RED}"Hi, $USER!${CL_RST}";
    echo "Pick a rom:"
    echo -e "\t(a) Tesla"
    echo -e "\t(b) Validus"
    echo -e "\t(c) Tipsy"
    echo -e "\t(d) Exit"
    echo -n "Please enter your choice:"
    read choice
    case $choice in
    "a"|"A")
    while :
    do
    clear
    echo -e ${CL_BLU}"                                         ${CL_BLU}";
    echo -e ${CL_BLU}"████████╗███████╗███████╗██╗      █████╗ ${CL_BLU}";
    echo -e ${CL_BLU}"╚══██╔══╝██╔════╝██╔════╝██║     ██╔══██╗${CL_BLU}";
    echo -e ${CL_BLU}"   ██║   █████╗  ███████╗██║     ███████║${CL_BLU}";
    echo -e ${CL_BLU}"   ██║   ██╔══╝  ╚════██║██║     ██╔══██║${CL_BLU}";
    echo -e ${CL_BLU}"   ██║   ███████╗███████║███████╗██║  ██║${CL_BLU}";
    echo -e ${CL_BLU}"   ╚═╝   ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝${CL_RST}";
    echo "Tesla menu"
    echo -e "\t(a) Repo init"
    echo -e "\t(b) Remove source and sync"
    echo -e "\t(c) Lunch & build"
    echo -e "\t(d) Return to main menu"
    echo -n "Please enter your choice:"
    read choice1
    case $choice1 in
        "a"|"a")
        cd ~/
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo -e ${CL_RED}"Repo init for Tesla${CL_RST}";
        repo init -u https://github.com/TeslaRom-N/manifest.git -b n7.1.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        rm -rf ~/$text/*
        cd ~/$text                
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1        
        clear
        ;;
        "c"|"c")
         while :
         do
        echo "Build menu"
        echo -e "\t(a) Lunch & build"
        echo -e "\t(b) Lunch & build clobber"
        echo -e "\t(c) Lunch & build clean"
        echo -e "\t(d) Return to Tesla menu"
        echo -n "Please enter your choice:"
        read device
        case $device in
        "a"|"a")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && time make tesla $flag                  
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && make clobber && time make tesla $flag                  
        clear
        ;;
        "c"|"c")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && make clean && time make tesla $flag                  
        clear
        ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;

    "b"|"B")
    while :
    do
    clear
    echo -e ${CL_GRN}"                                                     ${CL_GRN}";
    echo -e ${CL_GRN}"██╗   ██╗ █████╗ ██╗     ██╗██████╗ ██╗   ██╗███████╗${CL_GRN}";
    echo -e ${CL_GRN}"██║   ██║██╔══██╗██║     ██║██╔══██╗██║   ██║██╔════╝${CL_GRN}";
    echo -e ${CL_GRN}"██║   ██║███████║██║     ██║██║  ██║██║   ██║███████╗${CL_GRN}";
    echo -e ${CL_GRN}"╚██╗ ██╔╝██╔══██║██║     ██║██║  ██║██║   ██║╚════██║${CL_GRN}";
    echo -e ${CL_GRN}" ╚████╔╝ ██║  ██║███████╗██║██████╔╝╚██████╔╝███████║${CL_GRN}";
    echo -e ${CL_GRN}" ╚═══╝  ╚═╝  ╚═╝╚══════╝╚═╝╚═════╝  ╚═════╝ ╚══════╝ ${CL_RST}";
    echo "Validus menu"
    echo -e "\t(a) Repo init"
    echo -e "\t(b) Remove source and sync"
    echo -e "\t(c) Lunch & build"
    echo -e "\t(d) Return to main menu"
    echo -n "Please enter your choice:"
    read choice1
    case $choice1 in
        "a"|"A")
        cd ~/
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo -e ${CL_RED}"Repo init for Validus${CL_RST}";
        repo init -u https://github.com/GZR-ValidusOS/manifest.git -b n7.1.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        rm -rf ~/$text/*
        cd ~/$text                
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1        
        clear
        ;;
        "c"|"c")
         while :
         do
        echo "Build menu"
        echo -e "\t(a) Lunch & build"
        echo -e "\t(b) Lunch & build clobber"
        echo -e "\t(c) Lunch & build clean"
        echo -e "\t(d) Return to Validus menu"
        echo -n "Please enter your choice:"
        read device
        case $device in
        "a"|"a")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && time make validus $flag                  
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && make clobber && time make validus $flag                  
        clear
        ;;
        "c"|"c")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && make clean && time make validus $flag                  
        clear
        ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;

    "c"|"C")
    while :
    do
    clear
    echo -e ${CL_YEL}"                                     ${CL_YEL}";
    echo -e ${CL_YEL}"████████╗██╗██████╗ ███████╗██╗   ██╗${CL_YEL}";
    echo -e ${CL_YEL}"╚══██╔══╝██║██╔══██╗██╔════╝╚██╗ ██╔╝${CL_YEL}";
    echo -e ${CL_YEL}"   ██║   ██║██████╔╝███████╗ ╚████╔╝ ${CL_YEL}";
    echo -e ${CL_YEL}"   ██║   ██║██╔═══╝ ╚════██║  ╚██╔╝  ${CL_YEL}";
    echo -e ${CL_YEL}"   ██║   ██║██║     ███████║   ██║   ${CL_YEL}";
    echo -e ${CL_YEL}"   ╚═╝   ╚═╝╚═╝     ╚══════╝   ╚═╝   ${CL_RST}";
    echo "Tipsy menu"
    echo -e "\t(a) Repo init"
    echo -e "\t(b) Remove source and sync"
    echo -e "\t(c) Lunch & build"
    echo -e "\t(d) Return to main menu"
    echo -n "Please enter your choice:"
    read choice1
    case $choice1 in
        "a"|"a")
        cd ~/
        echo -n "Type folder name.> "
        read text 
        mkdir $text 
        cd $text
        echo -e ${CL_RED}"Repo init for Tipsy${CL_RST}";
        repo init -u git://github.com/TipsyOs/platform_manifest.git -b n7.1
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1
        cd ~/
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        rm -rf ~/$text/*
        cd ~/$text                
        echo -n "Type -jx flag.> "
        read  $text1
        repo sync --force-sync $text1        
        clear
        ;;
        "c"|"c")
         while :
         do
        echo "Build menu"
        echo -e "\t(a) Lunch & build"
        echo -e "\t(b) Lunch & build clobber"
        echo -e "\t(c) Lunch & build clean"
        echo -e "\t(d) Return to Tipsy menu"
        echo -n "Please enter your choice:"
        read device
        case $device in
        "a"|"a")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && time make tipsy $flag                  
        clear
        ;;
        "b"|"b")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && make clobber && time make tipsy $flag                  
        clear
        ;;
        "c"|"c")
        echo -n "Type folder name.> "
        read text        
        cd ~/$text 
        echo -n "Type device to lunch.> "
        read device
        echo -n "Type -jx flag.> "
        read flag
        . build/envsetup.sh
        lunch tesla_${device}-userdebug && make clean && time make tipsy $flag                  
        clear
        ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;
        "d"|"d")
        clear
        break
        ;;
            *)
            echo "invalid answer, please try again"
            ;;
    esac
    done
    ;;

    "d"|"D")
    clear
    exit
    ;;
        *)
        echo "invalid answer, please try again"
        ;;

esac
done