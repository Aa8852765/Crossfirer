@echo off
CHCP 936
title ������������ ����̽����ս��ר��
::����ɶ���ɫ
set /a rand=%random% %% 5
set HEX=9ABEF
CALL set hexcolors=%%HEX:~%rand%,1%%
color 0%hexcolors%

:Check
::����Ƿ�Ϊ����ԱȨ��
net session >nul 2>&1
IF %errorLevel% == 0 (
    echo         ����Ա���
) ELSE (
    echo         δ�Թ���Ա�������,�޷����������
)
Ping /n 3 127.0.0.1 >nul
GOTO Start

:Start
CLS
cd /d %~dp0
echo         ������ϸ�Ķ�˵��!!!!!!!!!!!!!!!!!!!!!!!!
echo.
echo.
echo         �밴���������/Press any key to continue
echo         .........................................
pause >nul

:Option
echo.
echo.
echo.
echo       ��ѡ����Ҫ���еĸ���/Please select an option
echo         �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo         �U [1]Run All assistants  �������и���
echo         �U [2]Run Shooter only    �����Զ�����
echo         �U [3]Run C4 Hero only    ����ս������
echo         �U [4]Run Bhop only       ������ͨ��
echo         �U [5]Run Clicker only    ������������
echo         �U [6]Run Recoilless only ���л���ѹǹ
echo         �U [7]Run NetBlocker only ����һ������
echo         �U [8]Run Challenger only �����޾��һ�
echo         �U [9]Exit Starter now    �˳���������
echo         �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
choice /C 123456789 /M ">        ��ѡ��/Choose a menu option:    "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 9 GOTO Run_End
IF ERRORLEVEL 8 GOTO Run_CLG
IF ERRORLEVEL 7 GOTO Run_NBK
IF ERRORLEVEL 6 GOTO Run_RCL
IF ERRORLEVEL 5 GOTO Run_CLK
IF ERRORLEVEL 4 GOTO Run_BHP
IF ERRORLEVEL 3 GOTO Run_C4H
IF ERRORLEVEL 2 GOTO Run_SHT
IF ERRORLEVEL 1 GOTO Run_ALL

:Run_ALL
CALL:Go_SHT
CALL:Go_C4H
CALL:Go_BHP
CALL:Go_CLK
CALL:Go_RCL
CALL:Go_NBK
CALL:Go_CTL
GOTO Option

:Run_SHT
CALL:Go_SHT
CALL:Go_CTL
GOTO Option

:Run_C4H
CALL:Go_C4H
CALL:Go_CTL
GOTO Option

:Run_BHP
CALL:Go_BHP
CALL:Go_CTL
GOTO Option

:Run_CLK
CALL:Go_CLK
CALL:Go_CTL
GOTO Option

:Run_RCL
CALL:Go_RCL
CALL:Go_CTL
GOTO Option

:Run_NBK
CALL:Go_NBK
CALL:Go_CTL
GOTO Option

:Run_CLG
CALL:Go_CLG
CALL:Go_CTL
GOTO Option

:Go_SHT
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_Shooter.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_Shooter.ahk"
) ELSE IF exist �Զ�����.exe (
    Start "" "�Զ�����.exe"
) ELSE (
    echo         �Զ����𲻴���!!!
    PowerShell "[console]::beep(1000,500)"
)
GOTO:EOF

:Go_C4H
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_C4_Hero.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_C4_Hero.ahk"
) ELSE IF exist ս������.exe (
    Start "" "ս������.exe"
) ELSE (
    echo         ս�����ֲ�����!!!
    PowerShell "[console]::beep(1500,500)"
)
GOTO:EOF

:Go_BHP
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_Bhop.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_Bhop.ahk"
) ELSE IF exist ��ͨ��.exe (
    Start "" "��ͨ��.exe"
) ELSE (
    echo         ��ͨ��������!!!
    PowerShell "[console]::beep(2000,500)"
)
GOTO:EOF

:Go_CLK
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_Clicker.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_Clicker.ahk"
) ELSE IF exist ��������.exe (
    Start "" "��������.exe"
) ELSE (
    echo         �������ֲ�����!!!
    PowerShell "[console]::beep(2500,500)"
)
GOTO:EOF

:Go_RCL
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_Recoilless.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_Recoilless.ahk"
) ELSE IF exist ����ѹǹ.exe (
    Start "" "����ѹǹ.exe"
) ELSE (
    echo         ����ѹǹ������!!!
    PowerShell "[console]::beep(3000,500)"
)
GOTO:EOF

:Go_NBK
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_NetBlocker.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_NetBlocker.ahk"
) ELSE IF exist һ������.exe (
    Start "" "һ������.exe"
) ELSE (
    echo         һ������������!!!
    PowerShell "[console]::beep(3500,500)"
)
GOTO:EOF

:Go_CLG
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_Challenger.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_Challenger.ahk"
) ELSE IF exist �޾��һ�.exe (
    Start "" "�޾��һ�.exe"
) ELSE (
    echo         �޾��һ�������!!!
    PowerShell "[console]::beep(4000,500)"
)
GOTO:EOF

:Go_CTL
Ping /n 1 127.0.0.1 >nul
IF exist "Crossfirer_Controller.ahk" (
    start "" "C:\Program Files\AutoHotkey\AutoHotkeyU64_UIA.exe" "Crossfirer_Controller.ahk"
) ELSE IF exist ���ֿ���.exe (
    Start "" "���ֿ���.exe"
) ELSE (
    echo         ���ֿ��Ʋ�����!!!
    PowerShell "[console]::beep(4500,500)"
)
GOTO:EOF

:Run_End
echo.
echo.
echo.
echo         �������ּ����˳�/Crossfirer will Exit
echo         ......................................
::TIMEOUT /T 3
Ping /n 3 127.0.0.1 >nul
