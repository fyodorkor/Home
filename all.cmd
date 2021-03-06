@echo off
PUSHD %~dp0..

IF EXIST WixBuildTools (CALL :DoAction WixBuildTools %*)
IF EXIST Data (CALL :DoAction Data %*)
IF EXIST Extensibility (CALL :DoAction Extensibility %*)
IF EXIST dutil (CALL :DoAction dutil %*)
IF EXIST wcautil (CALL :DoAction wcautil %*)
IF EXIST Dtf (CALL :DoAction Dtf %*)
IF EXIST Core.Native (CALL :DoAction Core.Native %*)
IF EXIST Core (CALL :DoAction Core %*)
IF EXIST Setup (CALL :DoAction Setup %*)

POPD
GOTO :EOF

:DoAction

SET _D=%1
SHIFT

PUSHD %_D%
ECHO %_D% executing: %1 %2 %3 %4 %5 %6 %7 %8 %9

CMD /C %1 %2 %3 %4 %5 %6 %7 %8 %9
rem START /D %1 /WAIT %2 %3 %4 %5 %6 %7 %8 %9

POPD
GOTO :EOF