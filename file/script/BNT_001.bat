@echo off
curl -i -X POST -H "apiKey: %1" http://127.0.0.1:5000/sganciaToken > temp.txt

for /f "delims=" %%a in ('findstr "tk-" temp.txt') do set token=%%a
for /f "delims=;" %%b in ('findstr "Set-Cookie:" temp.txt ') do set cookie=%%b
set cookie=%cookie:~12%
del temp.txt 

curl -X POST ^
-H "apiKey: %1" ^
-H "accessToken: %token%" ^
-H "Cookie: %cookie%" ^
http://127.0.0.1:5000/caricaMongoDB