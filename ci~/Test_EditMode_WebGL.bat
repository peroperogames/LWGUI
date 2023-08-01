@echo off

set EditResults="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\EditResults_WebGL%CI_PIPELINE_IID%.xml"
set EditLog="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\EditReport\Edit_WebGL%CI_PIPELINE_IID%.log"

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -nographics -runTests -projectPath %WebGLDEMOPATH% -testPlatform editmode -testResults %EditResults% -logFile %EditLog% 
