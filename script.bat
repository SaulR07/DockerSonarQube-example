@echo off
title SonarQube
set JAVA_HOME=%PROGRAMFILES%\Java\jdk-11
:inicio
echo =================================================
echo =                   SonarQube                   =
echo = JAVA_HOME: %JAVA_HOME%                        =
echo =================================================
echo =                                               =
echo =        1. Cambiar JAVA_HOME                   =
echo =        2. Correr SonarQube                    =
echo =        3. Salir                               =
echo =                                               =
echo =================================================
echo.
set /p menu=

if "%menu%"=="1" goto op1
if "%menu%"=="2" goto op2
if "%menu%"=="3" goto op3

:op1
cls
echo Pudes editar el archivo script.bat si necesitar dejar esta JAVA_HOME por defecto
echo Ingrese la ruta completa del JAVA_HOME Ej. C:\Program Files\Java\jdk-11.0.12
echo.
set /p ruta=
echo Seteando nuevo JAVA_HOME
set JAVA_HOME="%ruta%"
echo Nuevo JAVA_HOME seteado correctamente
pause
cls
goto :inicio

:op2
cls
echo Ingresa la ruta completa del proyecto Ej.D:\Workspace\Spring\INE\Proyectos\lectura-qr
set /p ruta=
cd "%ruta%"
echo Ingresa el comando de SonarQube para iniciar
set /p comando=
%comando%
echo Proyecto escaneado!
pause
cls
goto :inicio


:op3
cls&  exit

pause>nul
