@echo off
title Hadani cisla
color 0B

:nova_hra
set /a cislo=(%random% %% 150)+1
set /a pokusy=0

cls
echo ================================
echo       HADANI CISLA 1-150
echo ================================
echo.
echo Uhodni cislo mezi 1 a 150!
echo.

:hadani
set /p "tip=Zadej cislo: "

set /a pokusy+=1

if %tip% LSS %cislo% (
    echo VICE!
    echo.
    goto hadani
)

if %tip% GTR %cislo% (
    echo MENE!
    echo.
    goto hadani
)

echo.
echo ================================
echo          SPRAVNE!
echo ================================
echo Cislo bylo: %cislo%
echo Pocet pokusu: %pokusy%
echo.

choice /c AN /n /m "Nova hra? [A/N] "

if %errorlevel%==1 goto nova_hra
if %errorlevel%==2 exit
