start "" "C:\Program Files\VideoLAN\VLC\vlc.exe" %1 --started-from-file --sout=#duplicate{dst=http{mux=ts,dst=:8080/},dst=display} --no-sout-all --sout-keep --verbose=2 
pause
