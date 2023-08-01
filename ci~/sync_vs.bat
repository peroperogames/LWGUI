@echo off 

set SyncSolution_LOG_PATH1="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\SysnsLog\SyncSolution_Win%CI_PIPELINE_IID%.log"
set SyncSolution_LOG_PATH2="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\SysnsLog\SyncSolution_Android%CI_PIPELINE_IID%.log"
set SyncSolution_LOG_PATH3="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\SysnsLog\SyncSolution_iOS%CI_PIPELINE_IID%.log"
set SyncSolution_LOG_PATH4="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\SysnsLog\SyncSolution_WebGL%CI_PIPELINE_IID%.log"
set SyncSolution_LOG_PATH5="C:\Tool_EmptyDemo\%CI_PROJECT_NAME%\SysnsLog\SyncSolution_Switch%CI_PIPELINE_IID%.log"

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -nographics -projectPath %WinDEMOPATH% -executeMethod UnityEditor.SyncVS.SyncSolution -buildTarget Win -customBuildTarget Win -logFile %SyncSolution_LOG_PATH1%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -nographics -projectPath %AndroidDEMOPATH% -executeMethod UnityEditor.SyncVS.SyncSolution -buildTarget Android -customBuildTarget Android -logFile %SyncSolution_LOG_PATH2%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -nographics -projectPath %iOSDEMOPATH% -executeMethod UnityEditor.SyncVS.SyncSolution -buildTarget iOS -customBuildTarget iOS -logFile %SyncSolution_LOG_PATH3%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -nographics -projectPath %WebGLDEMOPATH% -executeMethod UnityEditor.SyncVS.SyncSolution -buildTarget WebGL -customBuildTarget WebGL -logFile %SyncSolution_LOG_PATH4%

"%UNITY_BASE_DIR%%UNITY_VERSION%\Editor\Unity.exe" -batchmode -quit -nographics -projectPath %SwitchDEMOPATH% -executeMethod UnityEditor.SyncVS.SyncSolution -buildTarget Switch -customBuildTarget Switch -logFile %SyncSolution_LOG_PATH5%




