@echo off
cls
set VSLANG=1033
haxe.exe build.hxml
cd export
start Global.exe