@echo off

set LOG_PATH1="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\DemoLog\Win%CI_PIPELINE_IID%.log"
set LOG_PATH2="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\DemoLog\Android%CI_PIPELINE_IID%.log"
set LOG_PATH3="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\DemoLog\iOS%CI_PIPELINE_IID%.log"
set LOG_PATH4="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\DemoLog\WebGL%CI_PIPELINE_IID%.log"
set LOG_PATH5="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\DemoLog\Switch%CI_PIPELINE_IID%.log"

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -createProject %WinDEMOPATH% -logFile %LOG_PATH1%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -createProject %AndroidDEMOPATH% -logFile %LOG_PATH2%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -createProject %iOSDEMOPATH% -logFile %LOG_PATH3%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -createProject %WebGLDEMOPATH% -logFile %LOG_PATH4%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -createProject %SwitchDEMOPATH% -logFile %LOG_PATH5%
