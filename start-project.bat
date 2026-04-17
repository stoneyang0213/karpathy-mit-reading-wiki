@echo off
REM ============================================================
REM  start-project.bat  —  14 本书 LLM Wiki 项目一键启动脚本
REM
REM  功能:
REM    1. 切换到项目根目录(脚本所在目录)
REM    2. 把 _next_session_bootstrap.md 的内容复制到剪贴板
REM    3. 启动 claude CLI
REM
REM  使用:
REM    - 双击此文件,或把它的快捷方式放到桌面
REM    - claude 启动后,按 Ctrl+V 粘贴,按回车发送
REM
REM  依赖:
REM    - Windows 10+(包含 PowerShell)
REM    - claude CLI 已安装且在 PATH 里
REM ============================================================

REM 切换到脚本所在目录(防止用户从别处双击导致 cwd 不对)
cd /d "%~dp0"

REM 检查 bootstrap 文件是否存在
if not exist "_next_session_bootstrap.md" (
  echo.
  echo [!] _next_session_bootstrap.md not found in project root.
  echo     Expected at: %~dp0_next_session_bootstrap.md
  echo.
  echo     This file should contain the first message for the next Claude session.
  echo     It is normally auto-updated by Claude at the end of each session.
  echo.
  pause
  exit /b 1
)

REM 用 PowerShell 以 UTF-8 方式读取 md 文件并放到剪贴板
REM (避免 Windows cmd 默认代码页导致中文乱码)
powershell -NoProfile -Command "Get-Content -Path '_next_session_bootstrap.md' -Encoding UTF8 -Raw | Set-Clipboard"

if errorlevel 1 (
  echo.
  echo [!] Failed to copy prompt to clipboard via PowerShell.
  echo     Check that PowerShell is available and Set-Clipboard is supported.
  pause
  exit /b 1
)

echo.
echo ============================================================
echo  [OK] Bootstrap prompt copied to clipboard
echo.
echo  NEXT STEPS:
echo    1. Claude Code will open in a moment
echo    2. Press Ctrl+V to paste the bootstrap prompt
echo    3. Press Enter to send
echo ============================================================
echo.

REM 启动 claude(继承当前 cwd = 项目根)
claude
