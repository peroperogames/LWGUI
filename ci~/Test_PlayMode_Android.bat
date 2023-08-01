@echo off


set PlayResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\PlayReport\PlayResults_Android%CI_PIPELINE_IID%.xml"
set PlayLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\PlayReport\Play_Android%CI_PIPELINE_IID%.log"

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %AndroidDEMOPATH% -testPlatform playmode -testResults %PlayResults% -logFile %PlayLog%
