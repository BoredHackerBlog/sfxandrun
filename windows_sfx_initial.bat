echo "Initial setup"
mkdir C:\build
mkdir c:\build\package
cd C:\build\
powershell Invoke-WebRequest -Uri "https://www.7-zip.org/a/7z1900-x64.exe" -OutFile "7z1900-x64.exe"
7z1900-x64.exe /S /D="C:\build\7z"
PING -n 10 127.0.0.1>nul
cd c:\build\7z\
powershell Invoke-WebRequest -Uri "https://www.7-zip.org/a/lzma1900.7z" -OutFile "lzma1900.7z"
7z.exe x lzma1900.7z
