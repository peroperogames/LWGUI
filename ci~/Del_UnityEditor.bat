@echo off

REM set file="%WinDEMOPATH%/com.prpr.%assembly_name%.csproj"
REM powershell -Command "(gc %file%) -replace ';UNITY_EDITOR;UNITY_EDITOR_64;UNITY_EDITOR_WIN', '' | Out-File %file%"

for %%f in (%WinDEMOPATH%\*.csproj) do (
    call :process_file "%%~f"
)
goto :eof

:process_file
set "file=%~1"
powershell -Command "(gc %file%) -replace ';UNITY_EDITOR;UNITY_EDITOR_64;UNITY_EDITOR_WIN', '' | Out-File %file%"
goto :eof
