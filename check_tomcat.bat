@echo off

netstat -na | find "LISTENING" | find /C /I ":8080" > NUL
if %errorlevel%==0 goto :running

echo tomcat is not running
start "" cmd /c "echo tomcat is not running!&echo(&pause"
cd
Rem Changing the path to Program Files
cd /D "C:\Program Files\Apache Software Foundation\Tomcat 8.0\bin"
startup

goto :eof

:running
echo tomcat is running
start "" cmd /c "echo tomcat is running!&echo(&pause"
powershell.exe -Command "Send-MailMessage -To 'vijayalaxmibb@gmail.com' -From 'Parameswaribala@gmail.com' -Subject 'Tomcat Shutdown' -SmtpServer 'smtp.gmail.com' -Credential 'Parameswaribala@gmail.com' -UseSsl "

cd 

cd /D "C:\Program Files\Apache Software Foundation\Tomcat 8.0\bin"
shutdown



sleep 20


:eof