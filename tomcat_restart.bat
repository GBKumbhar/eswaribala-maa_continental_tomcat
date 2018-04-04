@echo off

netstat -na | find "LISTENING" | find /C /I ":8080" > NUL
if %errorlevel%==0 goto :running

echo tomcat is not running
rem start "" cmd /c "echo tomcat is not running!&echo(&pause"
cd
Rem Changing the path to Program Files
cd /D "C:\Program Files\Apache Software Foundation\Tomcat 8.0\bin"
startup

goto :eof

:running
echo tomcat is running

:eof