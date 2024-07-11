#!/bin/sh

wget https://github.com/godotengine/godot/releases/download/$1/Godot_v$1_$2.zip
wget https://github.com/godotengine/godot/releases/download/$1/Godot_v$1_export_templates.tpz

mkdir -p ~/.local/share/godot/export_templates/$1
mkdir ~/.cache
mkdir -p ~/.config/godot

unzip Godot_v$1_$2.zip
mv Godot_v$1_$2 /usr/local/bin/godot

unzip Godot_v$1_export_templates.tpz
mv templates/* ~/.local/share/godot/export_templates/$1

rm -f Godot_v$1_export_templates.tpz Godot_v$1_$2.zip
