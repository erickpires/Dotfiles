#!/bin/bash

sel=$(printf "Terminar sessão\nDesligar\nReiniciar\nSuspender" | \
          rofi -dmenu -i -p Finalizar)

if [ $? != 0 ]; then
    exit
fi

if [ "$sel" = "Terminar sessão" ]; then
    i3-msg exit
elif [ "$sel" = "Desligar" ]; then
    poweroff
elif [ "$sel" = "Reiniciar" ]; then
    reboot
elif [ "$sel" = "Suspender" ]; then
    suspend
fi
