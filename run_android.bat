@echo off
title Menjalankan Flutter di Android Emulator / HP
cd /d "%~dp0"
echo ============================================================
echo   MENJALANKAN FLUTTER APP (ANDROID EMULATOR / DEVICE)
echo   Nama: Muhammad Rezqy Robiansyah (H1D024129)
echo ============================================================
echo.
echo Memeriksa perangkat Android yang terhubung...
C:\src\flutter\bin\flutter.bat devices
echo.
echo Menjalankan aplikasi pada perangkat Android aktif...
C:\src\flutter\bin\flutter.bat run
pause
