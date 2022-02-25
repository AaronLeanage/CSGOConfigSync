@echo off
echo CSGO Config Account Sync Generator - Created by Aaron Leanage
echo A backup of your config is recommended before using this tool
set /p originalID=< ./origAccID.txt
echo Original Account Folder ID:  %originalID%
:start
echo.
echo ------------------------------------------------------
set /p steamuserid="Enter Steam UserID to add to sync:"

echo.
echo ---deleting existing folder---
echo Rmdir "C:/Program Files (x86)/Steam/Userdata/%steamuserid%/730/local/cfg"
Rmdir /S "C:/Program Files (x86)/Steam/Userdata/%steamuserid%/730/local/cfg"

echo.
echo ---creating symlink---
echo mklink /d "C:/Program Files (x86)/Steam/Userdata/%steamuserid%/730/local/cfg" "C:/Program Files (x86)/Steam/Userdata/%originalID%/730/local/cfg"
mklink /d "C:/Program Files (x86)/Steam/Userdata/%steamuserid%/730/local/cfg" ^
"C:/Program Files (x86)/Steam/Userdata/%originalID%/730/local/cfg"

goto start