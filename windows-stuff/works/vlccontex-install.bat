reg add "HKEY_CLASSES_ROOT\*\shell\StreamWithVLC" /t REG_SZ /d "Yeet wayward"
reg add "HKEY_CLASSES_ROOT\*\shell\StreamWithVLC" /v MultiSelectModel /t REG_SZ /d "Player"
reg add "HKEY_CLASSES_ROOT\*\shell\StreamWithVLC" /v Icon /t REG_SZ /d "C:\Program Files\VideoLAN\VLC\vlc.exe",0
reg add "HKEY_CLASSES_ROOT\*\shell\StreamWithVLC\command" /t REG_SZ /d "\"C:\Program Files\VideoLAN\VLC\vlcstream.bat\" \"%%1\""

echo start "" "C:\Program Files\VideoLAN\VLC\vlc.exe" %%1 --started-from-file --sout=#duplicate{dst=http{mux=ts,dst=:8080/},dst=display} --no-sout-all --sout-keep --verbose=2 >> "C:\Program Files\VideoLAN\VLC\vlcstream.bat"

