$ErrorActionPreference = "Continue"

Write-Host "PPT Master Starter 环境检查"
Write-Host "===================================="

function Check-Command {
    param (
        [string]$Name,
        [string]$Command
    )

    $cmd = Get-Command $Command -ErrorAction SilentlyContinue
    if ($null -eq $cmd) {
        Write-Host "[缺失] $Name ($Command)"
        return
    }

    Write-Host "[正常] ${Name}: $($cmd.Source)"
}

function Check-Python {
    $python = Get-Command python -ErrorAction SilentlyContinue
    if ($null -ne $python) {
        $version = & python --version 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-Host "[正常] Python: $($python.Source) ($version)"
            return
        }
    }

    $py = Get-Command py -ErrorAction SilentlyContinue
    if ($null -ne $py) {
        $version = & py --version 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-Host "[正常] Python 启动器: $($py.Source) ($version)"
            return
        }
    }

    Write-Host "[缺失] Python 不可用（python 或 py 都没有正常工作）"
}

Check-Python

Check-Command "Node.js" "node"
Check-Command "npx" "npx"

Write-Host ""
Write-Host "检查 starter 文件夹..."

$folders = @("inputs", "outputs", "prompts", "samples")
foreach ($folder in $folders) {
    if (Test-Path -LiteralPath $folder) {
        Write-Host "[正常] $folder/"
    } else {
        Write-Host "[缺失] $folder/"
    }
}

Write-Host ""
Write-Host "版本信息:"

try {
    node --version
} catch {
    Write-Host "Node.js 版本不可用"
}

try {
    npx --version
} catch {
    Write-Host "npx 版本不可用"
}

Write-Host ""
Write-Host "这个脚本只检查环境，不会安装东西，也不会删除文件。"

