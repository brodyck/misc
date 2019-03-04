@echo off
REM kernel power event 109 = shutdown
REM 107 = resume
REM 41 = critical reboot
REM 42 = enter sleep
REM get-winevent -providername Microsoft-Windows-Kernel-Power | foreach-object { $_.timecreated,$_.ID }
REM mountvol %drive% %volume%

set drive=e:
set volume=\\?\Volume{054e0ddf-2d57-48a1-8b04-70ca2fdd58ca}\


if exist %drive% (

mountvol %drive% /p

) else (

mountvol %drive% %volume%
w32tm /resync

)
exit

