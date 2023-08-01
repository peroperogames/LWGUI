REM @echo off

REM set file="%iOSDEMOPATH%/com.prpr.%assembly_name%t.csproj"
REM powershell -Command "(gc %file%) -replace ';UNITY_EDITOR;UNITY_EDITOR_64;UNITY_EDITOR_WIN', '' | Out-File %file%"
@echo off

for %%f in (%iOSDEMOPATH%\*.csproj) do (
    call :process_file "%%~f"
)
goto :eof

:process_file
set "file=%~1"
powershell -Command "(gc %file%) -replace ';UNITY_EDITOR;UNITY_EDITOR_64;UNITY_EDITOR_WIN', '' | Out-File %file%"
goto :eof
