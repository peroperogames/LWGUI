#!/bin/bash

# while true; do
#   status=$(curl --silent --request GET --header "PRIVATE-TOKEN: $CI_JOB_TOKEN" "$CI_API_V4_URL/projects/$CI_PROJECT_ID/pipelines/$PREVIOUS_PIPELINE_ID" | jq -r '.status')
#   if [[ "$status" == "success" ]]; then
#     break # 前一个流水线已成功完成，退出循环
#   elif [[ "$status" == "failed" ]]; then
#     break # 前一个流水线执行失败，退出当前流水线
#   fi
#   sleep 10 # 等待 10 秒钟，然后再次检查状态
# done
while [[ "$(curl --silent --request GET --header "PRIVATE-TOKEN: $CI_JOB_TOKEN" "$CI_API_V4_URL/projects/$CI_PROJECT_ID/pipelines/$PREVIOUS_PIPELINE_ID" | jq -r '.status')" == "running" ]]; do
  sleep 10
done
