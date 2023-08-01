@echo off
New-Item -ItemType Directory -Path $CI_PROJECT_DIR\artifacts\Test\ -Force
Copy-Item -Path "C:\Tool_EmptyDemo\$CI_PROJECT_NAME\EditReport\EditResults_Win$CI_PIPELINE_IID.xml" -Destination $CI_PROJECT_DIR\artifacts\Test\ -Recurse -Force
Copy-Item -Path "C:\Tool_EmptyDemo\$CI_PROJECT_NAME\EditReport\EditResults_Android$CI_PIPELINE_IID.xml" -Destination $CI_PROJECT_DIR\artifacts\Test\ -Recurse -Force
Copy-Item -Path "C:\Tool_EmptyDemo\$CI_PROJECT_NAME\EditReport\EditResults_iOS$CI_PIPELINE_IID.xml" -Destination $CI_PROJECT_DIR\artifacts\Test\ -Recurse -Force
Copy-Item -Path "C:\Tool_EmptyDemo\$CI_PROJECT_NAME\EditReport\EditResults_WebGL$CI_PIPELINE_IID.xml" -Destination $CI_PROJECT_DIR\artifacts\Test\ -Recurse -Force
Copy-Item -Path "C:\Tool_EmptyDemo\$CI_PROJECT_NAME\EditReport\EditResults_Switch$CI_PIPELINE_IID.xml" -Destination $CI_PROJECT_DIR/artifacts/Test/ -Recurse -Force
