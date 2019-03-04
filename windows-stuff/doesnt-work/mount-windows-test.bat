@echo off
REM kernel power event 109 = shutdown
REM 107 = resume
REM 41 = critical reboot
REM 42 = enter sleep
REM get-winevent -providername Microsoft-Windows-Kernel-Power | foreach-object { $_.timecreated,$_.ID }
REM mountvol %drive% %volume%

set drive=d:
set logfile=dog.log
set volume=\\?\Volume{f39678d8-cd3e-41f3-a824-94bcad78bd35}\

::mute
::echo %* 
::exit /b 0

:logmute
echo %* >> "%logfile%" 2>&1
exit /b 0

:capture
for /f %%i in ('%1%') do set out=%%i || call :logmute %%i

call :capture goto :%1% 2>&1') do set out=%%i || call :logmute %%i

:start
for /f %%i in ('w32tm /resync 2>&1') do set out=%%i
call:logmute %%i
goto :end

:stop
mountvol %drive% /p
exit /b 0

:end
exit /b 0

if exist %drive% (



)
exit

