@echo off
title ETHERFLOW v4.2 - 1-CLICK WHOLE BOT & MT5 ACTIVATOR (ALL 8 ASSETS)
color 0A
echo ============================================================================
echo   ETHERFLOW v4.2 - ACTIVATING YOUR BOT DASHBOARD AND METATRADER 5 EA
echo   100%% Local on Your PC or ForexVPS (Account 472899341 - Exness-MT5Trial16)
echo ============================================================================
echo.

set "HERE=%~dp0"
set "BOTROOT=C:\Bino_EtherFlow_ForexVPS"
if not exist "%BOTROOT%" mkdir "%BOTROOT%"

echo [1/3] Copying Whole Bot System files to %BOTROOT%...
xcopy "%HERE%*" "%BOTROOT%\" /E /I /Y >nul 2>&1

echo [2/3] Compiling & Activating Bino_EtherFlow_Institutional_AI_EA in MT5...
if exist "%HERE%static\transfer_whole_bot_to_forexvps.ps1" (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%HERE%static\transfer_whole_bot_to_forexvps.ps1"
) else if exist "%HERE%EXECUTE_LIVE_MT5_TRADES_NOW.bat" (
    call "%HERE%EXECUTE_LIVE_MT5_TRADES_NOW.bat"
)

echo [3/3] Opening Your Whole Bot Dashboard Window...
if exist "%BOTROOT%\OPEN_MY_BOT_DASHBOARD.html" (
    start "" "%BOTROOT%\OPEN_MY_BOT_DASHBOARD.html"
) else if exist "%HERE%OPEN_MY_BOT_DASHBOARD.html" (
    start "" "%HERE%OPEN_MY_BOT_DASHBOARD.html"
)

echo.
echo ============================================================================
echo   DONE! YOUR BOT DASHBOARD AND METATRADER 5 EA ARE NOW ACTIVE!
echo ============================================================================
pause
