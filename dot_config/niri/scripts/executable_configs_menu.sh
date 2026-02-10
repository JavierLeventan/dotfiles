#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Editar configs"
TITLE="Elegi el config a editar"
MENU="Selecciona una de las siguientes opciones:"

OPTIONS=(1 "Niri"
         2 "Waybar"
         3 "Waybar Style")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            config_file="$HOME/.config/niri/config.kdl"
            ;;
        2)
            config_file="$HOME/.config/waybar/config.jsonc"
            ;;
        3)
            config_file="$HOME/.config/waybar/style.css"
            ;;
esac

vim "$config_file"
