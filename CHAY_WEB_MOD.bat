@echo off
chcp 65001 >nul
cd /d "%~dp0"
title NMINHIOS MOD Z ALOK - WEB SERVER NỘI BỘ

echo ==============================================================
echo    DANG KHOI CHAY WEB MOD SKIN ALOK AWK OB55 (NMINHIOS)
echo ==============================================================
echo.
echo [1] Trinh duyet tren may tinh se tu dong mo: http://localhost:8000
echo.
echo [2] Neu muon mo tren DIEN THOAI (cung mang Wi-Fi):
echo     Hay xem dia chi IPv4 ben duoi roi go vao Safari / Chrome tren DT:
for /f "tokens=4" %%a in ('route print ^| findstr 0.0.0.0.*0.0.0.0') do (
    echo     ==^> http://%%a:8000
)
echo.
echo ==============================================================
echo * LUU Y: De web hoat dong, VUI LONG KHONG DONG CUA SO NAY!
echo ==============================================================
echo.

start "" "http://localhost:8000"
python -m http.server 8000
pause
