#!/bin/sh

# GLOBAL CONFIG - VISUAL OPTIONS
: "${GC_VIS_BATTERY:=1}"
: "${GC_VIS_NETWORK:=0}"
: "${GC_VIS_BLUETOOTH:=0}"
: "${GC_VIS_CLOCK:=1}"
: "${GC_VIS_BOXART:=1}"
: "${GC_VIS_NAME:=0}"
: "${GC_VIS_DASH:=0}"
: "${GC_VIS_CDIR:=1}"
: "${GC_VIS_CBIN:=1}"

GC_VIS_BATTERY=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "battery")
GC_VIS_NETWORK=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "network")
GC_VIS_BLUETOOTH=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "bluetooth")
GC_VIS_CLOCK=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "clock")
GC_VIS_BOXART=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "boxart")
GC_VIS_NAME=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "name")
GC_VIS_DASH=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "dash")
GC_VIS_CDIR=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "contentfolder")
GC_VIS_CBIN=$(PARSE_INI "$GLOBAL_CONFIG" "visual" "contentfile")

export GC_VIS_BATTERY
export GC_VIS_NETWORK
export GC_VIS_BLUETOOTH
export GC_VIS_CLOCK
export GC_VIS_BOXART
export GC_VIS_NAME
export GC_VIS_DASH
export GC_VIS_CDIR
export GC_VIS_CBIN
