echo "Build"
echo "package\runner.bat will run after extraction...."
7z.exe a C:\build\package.7z C:\build\package -r

echo ;!@Install@!UTF-8! > c:\build\config.txt
echo Title="Extract and run package" >> c:\build\config.txt
echo BeginPrompt="Do you want to extract and run this package?" >> c:\build\config.txt
echo RunProgram="package\runner.bat" >> c:\build\config.txt
echo ;!@InstallEnd@! >> c:\build\config.txt

copy /b c:\build\7z\bin\7zSD.sfx + C:\build\config.txt + C:\build\package.7z C:\build\package.exe