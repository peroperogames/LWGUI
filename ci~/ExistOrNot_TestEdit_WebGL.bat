@echo on
chcp 65001 >nul
set "string=FAILED"

C:\Test\UnityTestRunnerResultsReporter\net5.0\win10-x64\UnityTestRunnerResultsReporter.exe --resultsPath="%CI_PROJECT_DIR%\artifacts\Test" --resultXMLName="%CI_PROJECT_DIR%\artifacts\Test\EditResults_WebGL%CI_PIPELINE_IID%.xml" --unityLogName="%CI_PROJECT_DIR%\artifacts\Test\Edit_WebGL%CI_PIPELINE_IID%.log" > %CI_PROJECT_DIR%\artifacts\WebGL_test_result.txt

set "filename=%CI_PROJECT_DIR%\artifacts\WebGL_test_result.txt"

set faild="Total Tests run: 0,"
findstr /c:%string% %filename% >nul 2>&1
if %errorlevel% equ 0 (
   echo "'string=Overall result: FAILED' be found"
   findstr /c:%faild% %filename% >nul 2>&1
   if %errorlevel% equ 0 (
   echo "该测试为空，结果算成功"
   type %filename%
   exit 0
   ) else (
   echo "测试失败"
   type %filename%
   exit 1
   )
) else (
   echo "测试成功"
   type %filename%
   exit 0
)