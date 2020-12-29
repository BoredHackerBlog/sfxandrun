echo "Build"
echo "package/runner.bat will run after extraction...."
7z a /tmp/build/package.7z /tmp/build/package -r

cat <<EOF > /tmp/build/config.txt
;!@Install@!UTF-8!
Title="Extract and run package"
BeginPrompt="Do you want to extract and run this package?"
RunProgram="package\runner.bat"
;!@InstallEnd@!
EOF

cat /tmp/build/bin/7zSD.sfx /tmp/build/config.txt /tmp/build/package.7z > /tmp/build/package.exe