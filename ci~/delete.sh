#!/bin/bash

# 设置要删除的目录路径和时间段
path="C:/Tool_EmptyDemo/$CI_PROJECT_NAME"
time=$(date -d "2 hours ago" +%s)

# 遍历目录中的所有文件和文件夹
for file in "$path"/*; do
    # 获取文件/文件夹的最后修改时间
    modified=$(date -r "$file" +%s)
    # 如果最后修改时间早于指定时间，则删除该文件/文件夹
    if [[ $modified -lt $time ]]; then
        echo "Deleting $file"
        rm -rf "$file"
    fi
done
