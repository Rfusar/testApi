@echo off

if "%1" == "github" (
    call file\script\Github.bat

) else if "%1" == "BNT_001_logs" (
    set apikey=""
    call file\script\BNT_001.bat %apikey%
    goto :eof

) else if "%1" == "BNT_001_reports" (
    set apikey=""
    call file\script\BNT_001.bat %apikey%
    goto :eof
    
) else if "%1" == "help" (
    call :help
    goto :eof

) else if "%1" == "" ( 
    call :help 
    goto :eof
)




