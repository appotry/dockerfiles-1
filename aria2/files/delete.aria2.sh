#!/usr/bin/env bash
#=================================================================
# https://github.com/P3TERX/aria2.conf
# File name：delete.aria2.sh
# Description: Delete .aria2 file after Aria2 download is complete
# Lisence: MIT
# Version: 2.0
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================================

DOWNLOAD_PATH='/downloads'

FILE_PATH=$3
REMOVE_DOWNLOAD_PATH=${FILE_PATH#${DOWNLOAD_PATH}/}
TOP_PATH=${DOWNLOAD_PATH}/${REMOVE_DOWNLOAD_PATH%%/*}
LIGHT_GREEN_FONT_PREFIX="\033[1;32m"
FONT_COLOR_SUFFIX="\033[0m"
INFO="[${LIGHT_GREEN_FONT_PREFIX}INFO${FONT_COLOR_SUFFIX}]"

echo -e "$(date +"%m/%d %H:%M:%S") ${INFO} Delete .aria2 file ..."

if [ $2 -eq 0 ]; then
    exit 0
elif [ -e "${FILE_PATH}.aria2" ]; then
    rm -vf "${FILE_PATH}.aria2"
elif [ -e "${TOP_PATH}.aria2" ]; then
    rm -vf "${TOP_PATH}.aria2"
fi