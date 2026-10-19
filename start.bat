@echo off
title SchemeSaathi - AI & TinyFish Platform
echo ====================================================
echo Starting SchemeSaathi Web Server...
echo Team CodeRush · Kritical Hacks 2026
echo ====================================================

REM Try agy-node first if available, else standard node
if exist "C:\Users\Aakashi Arora\AppData\Roaming\Antigravity\bin\agy-node.cmd" (
    start "" "http://localhost:3000"
    "C:\Users\Aakashi Arora\AppData\Roaming\Antigravity\bin\agy-node.cmd" server.js
) else (
    start "" "index.html"
)
pause
