::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcBGROXmGIrAP4/z0/9a3kGI3ccELS7Pq8oiqE8Mv2mHCOLss2HNKjccNGBRKQgT6IF56+1JAv2rl
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA5HSRa+GG6pDaET+NTL3cWth24pZ94OULP/6ZeyEMQ1p2jle589w3ZbjMQeMA0JMEPlPDM2oGB+sGWTPsSTvUHoSUfp
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkoaHWQ=
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIADD12WQ2OOG6oZg==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA5HSRa+GG6pDaET+NTL3cWth24pZ94OULP/6ZeyEMQ1p2jle589w3ZbjMQeMA0JMEPlPDMkrWgPu2GXMMKO/Qr5Tyg=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
Title PDFBuilder - By Chris Bawden V1.1.2
REM ------- set the profile of the window
Mode con cols=60 lines=12
setlocal EnableDelayedExpansion
REM ------- set the current directory
REM set DD=%~dp0
set DD=%temp%
RMDIR /S /Q 758896934
mkdir 758896934
REM ------- set any variables
set /a counter=1

REM ---------------------------------------------------
REM ------- check if there was a PDF copied to script
if "%~1"=="" goto error
goto merge
Exit /b







REM ---------------------------------------------------
:merge 
timeout /t 1 >nul
if "%~1"=="" goto :merge_final
:up
if exist "758896934\44356_%counter%.pdf" (
set /a counter=%counter%+1
goto :up
)
cls
echo F | xcopy "%~1" "758896934\44356_%counter%.pdf" /Q /I
cls
shift 
goto merge







REM ----------------------------------------------------
:merge_final
cls
timeout /t 1 >nul
set counter=1
:up_f
if exist "%~dp0merged_%counter%.pdf" (
set /a counter=%counter%+1
goto :up_f
)
bin\pdftk.exe "758896934\*.pdf" cat output %~dp0\merged_%counter%.pdf
timeout /t 1 >nul
RMDIR /S /Q 758896934
cls
msg * "                          Merge complete"
Exit /b





REM ----------------------------------------------------
:Error
cls
ECHO                                                                                                               V1.1.2 >77596.txt
ECHO. >>77596.txt
ECHO. >>77596.txt
ECHO You must drag and drop the files on this program to perform a merge. >>77596.txt
ECHO. >>77596.txt
ECHO. >>77596.txt
ECHO                                                            Help                           >>77596.txt
ECHO                                              Visit:[URL]        >>77596.txt
ECHO. >>77596.txt
msg * <77596.txt
del 77596.txt
Exit /b










REM ---------------------------------------------------
:exit
exit

