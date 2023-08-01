@echo off

REM taskkill /F /IM Unity.exe

set PlayResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\PlayReport\PlayResults_iOS%CI_PIPELINE_IID%.xml"
set PlayLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\PlayReport\Play_iOS%CI_PIPELINE_IID%.log"

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %iOSDEMOPATH% -testPlatform playmode -testResults %PlayResults% -logFile %PlayLog%
