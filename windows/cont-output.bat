@ECHO OFF

set x=0
:DoWhile
REM Break from the loop if a condition is met
IF %x% GEQ 4 GOTO EndDoWhile

set /A x=%x%+1
echo hi bob output
echo hi bob error 1>&2
echo "x=%x%"
TIMEOUT 2

REM Reiterate through the loop once more
GOTO DoWhile
:EndDoWhile

echo cont-output.bat end