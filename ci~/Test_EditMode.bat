@echo off

set EditResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\EditResults_Win%CI_PIPELINE_IID%.xml"
REM set EditResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\EditResults_Android%CI_PIPELINE_IID%.xml"
REM set EditResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\EditResults_Switch%CI_PIPELINE_IID%.xml"
REM set EditResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\EditResults_WebGL%CI_PIPELINE_IID%.xml"
REM set EditResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\EditResults_iOS%CI_PIPELINE_IID%.xml"
set EditLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\Edit_Win%CI_PIPELINE_IID%.log"
REM set EditLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\Edit_iOS%CI_PIPELINE_IID%.log"
REM set EditLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\Edit_WebGL%CI_PIPELINE_IID%.log"
REM set EditLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\Edit_Switch%CI_PIPELINE_IID%.log"
REM set EditLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\Edit_Android%CI_PIPELINE_IID%.log"

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %WinDEMOPATH% -testPlatform editmode -testResults %EditResults% -logFile %EditLog% 

REM if errorlevel 1 (
REM     echo Error: win failed.
REM     exit /b
REM )

REM "%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %AndroidDEMOPATH% -testPlatform editmode -testResults %EditResults% -logFile %EditLog% 

REM if errorlevel 1 (
REM     echo Error: Android failed.
REM     exit /b
REM )

REM "%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %SwitchDEMOPATH% -testPlatform editmode -testResults %EditResults% -logFile %EditLog% 

REM if errorlevel 1 (
REM     echo Error: Switch failed.
REM     exit /b
REM )

REM "%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %WebGLDEMOPATH% -testPlatform editmode -testResults %EditResults% -logFile %EditLog% 

REM if errorlevel 1 (
REM     echo Error: WebGL failed.
REM     exit /b
REM )
REM "%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %iOSDEMOPATH% -testPlatform editmode -testResults %EditResults% -logFile %EditLog% 

