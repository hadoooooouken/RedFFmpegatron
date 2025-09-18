@echo off
title Send to RedFFmpegatron
mode con: lines=3 cols=60

set "APP_PATH=E:\ffmpeg\dist\RedFFmpegatron.exe"

start "" "%APP_PATH%" "%~f1"