@ECHO OFF
setlocal 

for /f "tokens=*" %%a in ('findstr "^"') do (
    echo "line=%%a"
    echo "%%a" >> search-cont-output2.txt
)

REM echo line=%*
REM echo line=%* | findstr /I "ERROR" >> search-cont-output.txt
