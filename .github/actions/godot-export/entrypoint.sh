#!/bin/sh

wget -q https://github.com/godotengine/godot/releases/download/$1/Godot_v$1_linux.x86_64.zip
wget -q https://github.com/godotengine/godot/releases/download/$1/Godot_v$1_export_templates.tpz

templateDir=$(echo $1|tr - .)

mkdir -p ~/.local/share/godot/export_templates/$templateDir

chmod +rwx /github/workspace

unzip -q Godot_v$1_linux.x86_64.zip
mv Godot_v$1_linux.x86_64 /usr/local/bin/godot

unzip -q Godot_v$1_export_templates.tpz
mv templates/* ~/.local/share/godot/export_templates/$templateDir

rm -f Godot_v$1_export_templates.tpz Godot_v$1_linux.x86_64.zip

mv /root/.local/share/godot/export_templates/$templateDir ~/.local/share/godot/export_templates/$templateDir

cd /github/workspace
mkdir -v -p build-$2
godot --headless --verbose --export-release $2 /github/workspace/build-$2/$3
zip -r build-$2.zip build-$2 