#!/usr/bin/env sh

echo "PPT Master Starter 环境检查"
echo "===================================="

check_command() {
  label="$1"
  command_name="$2"

  if command -v "$command_name" >/dev/null 2>&1; then
    echo "[正常] $label: $(command -v "$command_name")"
  else
    echo "[缺失] $label ($command_name)"
  fi
}

check_command "Python" "python3"
check_command "Node.js" "node"
check_command "npx" "npx"

echo ""
echo "检查 starter 文件夹..."

for folder in inputs outputs prompts samples; do
  if [ -d "$folder" ]; then
    echo "[正常] $folder/"
  else
    echo "[缺失] $folder/"
  fi
done

echo ""
echo "版本信息:"

python3 --version 2>/dev/null || echo "Python 版本不可用"
node --version 2>/dev/null || echo "Node.js 版本不可用"
npx --version 2>/dev/null || echo "npx 版本不可用"

echo ""
echo "这个脚本只检查环境，不会安装东西，也不会删除文件。"
