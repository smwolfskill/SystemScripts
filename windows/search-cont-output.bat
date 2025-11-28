@ECHO OFF

REM cont-output.bat 2>&1 | for /F "tokens=*" %%a in ('more') do call :processline %%a
REM cont-output.bat 2>&1 | search-cont-output2.bat
REM cont-output.bat 2>&1 | cscript //nologo search-cont-output3.js
cont-output.bat 2>&1 | cscript //nologo Log_ethminer_errors.js
REM cont-output.bat 2>&1 | more

REM :processline
REM echo line=%*
REM echo line=%* | findstr /I "ERROR" >> search-cont-output.txt
