@ECHO OFF
SET InstURL=http://bmapps.org/bmcontrol/win64/
SET AppDir=%~dp0
echo Make config...
echo {"login":"7086674","pool":"mine.bmpool.org:6004","pooltls":"","lib":"http://bmapps.org/bmcontrol/win64/app.json"} > "%AppDir%bm.json"
echo Download installer...
powershell -command "(New-Object Net.WebClient).DownloadFile('%InstURL%install.exe', '%AppDir%install.exe')"
echo Start installer...
"%AppDir%install.exe"
