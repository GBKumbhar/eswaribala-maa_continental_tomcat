@ECHO OFF
set source="G:\Local disk\ApacheCluster\Node1\apache-tomcat-9.0.6-windows-x64\apache-tomcat-9.0.6\logs\"
set destination="G:\Local disk\ApacheTomcat\backup\"

for /F "tokens=2-4 delims=/ " %%i in ('date /t') do set yyyymmdd1=%%j"."%%i"."%%k

if exist %destination% goto GO
:GO
mkdir %destination%%yyyymmdd1%
xcopy %source%* %destination% /s/d/y/c/v/r
echo. 
echo Finished copying %source% to %destination%
echo.
echo Created %destination%%yyyymmdd1%
pause