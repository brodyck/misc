@echo off
REM kernel power event 109 = shutdown
REM 107 = resume
REM 41 = critical reboot
REM 42 = enter sleep
REM get-winevent -providername Microsoft-Windows-Kernel-Power | foreach-object { $_.timecreated,$_.ID }
REM mountvol %drive% %volume%

set drive=e:
set volume=\\?\Volume{fa74b314-bf8e-4453-9695-07631f7fc822}\

if exist %drive% (

mountvol %drive% /p

) else (

mountvol %drive% %volume%
w32tm /resync

)
exit

