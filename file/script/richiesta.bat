@echo off
set "percorso_file=%1"

for /f "tokens=2 delims=: " %%a in ('findstr /C:"\"apiKey\"" "%percorso_file%"') do set apiKey=%%a
set apiKey=%apiKey:~1,-2%

curl -i -X POST -H "apiKey: %apiKey%" http://127.0.0.1:5000/Token > temp.txt

for /f "delims=" %%b in ('findstr "tk-" temp.txt') do set token=%%b
for /f "delims=;" %%c in ('findstr "Set-Cookie:" temp.txt ') do set cookie=%%c
set cookie=%cookie:~12%
del temp.txt 

curl -X POST ^
-H "apiKey: %apiKey%" ^
-H "accessToken: %token%" ^
-H "Cookie: %cookie%" ^
-H "Content-Type: application/json" ^
-d @%percorso_file% ^
http://127.0.0.1:5000/chatGPT