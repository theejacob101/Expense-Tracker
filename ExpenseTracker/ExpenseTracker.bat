cls
@echo off
title Expense Tracker Devloped by @theejacob101 on GitHub

echo ===================================
echo         [91mExpense Tracker[0m
echo [92mDevloped by @theejacob101 on GitHub[0m
echo ===================================

if not exist log.csv echo Made by expence >> log.csv

choice /c IO /m "Incoming or Outgoing"

if /I %errorlevel% EQU 1 (
   set Type=ADD
   goto Incoming
)
If /I %errorlevel% EQU 2 (
   set Type=SUBTRACT
   goto Outgoing
)

:Incoming
cls
set /p amt=How much money?
echo.
set /p comment=What is this from?
echo.
echo Logged:
echo %date%,%time%,%username%,%type%%amt%, %comment%
echo %date%, %time%,%username%,%type%%amt%, %comment% >> log.csv
pause
call ExpenseTracker.bat

:Outgoing
cls
set /p amt=How much money?
set amt=$%amt%
echo.
set /p comment=What is this for?
echo.
echo Logged:
echo %date%,%time%,%username%,%type%%amt%, %comment%
echo %date%, %time%,%username%,%type%%amt%, %comment% >> log.csv
pause
call ExpenseTracker.bat
