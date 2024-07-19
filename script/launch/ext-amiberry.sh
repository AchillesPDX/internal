#!/bin/sh

. /opt/muos/script/var/func.sh

. /opt/muos/script/var/device/storage.sh
. /opt/muos/script/var/device/sdl.sh

NAME=$1
CORE=$2
ROM=$3

export HOME=/root

export SDL_HQ_SCALER="$DC_SDL_SCALER"
export SDL_ROTATION="$DC_SDL_ROTATION"
export SDL_BLITTER_DISABLED="$DC_SDL_BLITTER_DISABLED"

echo "amiberry" >/tmp/fg_proc

EMUDIR="$DC_STO_ROM_MOUNT/MUOS/emulator/amiberry"

chmod +x "$EMUDIR"/amiberry
cd "$EMUDIR" || exit

HOME="$EMUDIR" SDL_ASSERT=always_ignore ./amiberry "$ROM"

unset SDL_HQ_SCALER
unset SDL_ROTATION
unset SDL_BLITTER_DISABLED
