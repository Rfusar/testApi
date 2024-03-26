@echo off

if "%1" == "github" (
    call file\script\Github.bat

) else if "%1" == "BNT_001_logs" (
    call file\script\richiesta.bat C:\Users\Utente\Desktop\presenze_lavoro\esercizi\progettiAndrea\SERVICES\Test\file\script\jsons\BNT_001_logs.json
    goto :eof

) else if "%1" == "BNT_001_reports" (
    call file\script\richiesta.bat C:\Users\Utente\Desktop\presenze_lavoro\esercizi\progettiAndrea\SERVICES\Test\file\script\jsons\BNT_001_reports.json
    goto :eof
    
) else if "%1" == "chatGPT" (
    call file\script\richiesta.bat C:\Users\Utente\Desktop\presenze_lavoro\esercizi\progettiAndrea\SERVICES\Test\file\script\jsons\chatGPT.json
    goto :eof

) else if "%1" == "help" (
    call :help
    goto :eof

) else if "%1" == "" ( 
    call :help 
    goto :eof
)




