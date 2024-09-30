@echo off
set DIRECTORY=virtualenvs\.lms_backend

REM Deactivate any active virtual environments
deactivate 2> nul

REM Check if the virtual environment directory exists
if exist "%DIRECTORY%" (
    REM Activate the virtual environment
    call "%DIRECTORY%\Scripts\activate"
) else (
    REM Create the virtual environment and activate it
    virtualenv -p "E:\Softwares\Python\python.exe" "%DIRECTORY%"
    call "%DIRECTORY%\Scripts\activate"
)