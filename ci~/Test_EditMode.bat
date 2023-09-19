@echo off

set EditResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\EditResults_Win%CI_PIPELINE_IID%.xml"

set EditLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\Edit_Win%CI_PIPELINE_IID%.log"


"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %WinDEMOPATH% -testPlatform editmode -testResults %EditResults% -logFile %EditLog% 
