@echo off 
CHCP 936
title ������������ ����̽����ս��ר��
::����ɶ���ɫ
set /a rand=%random% %% 5
set HEX=9ABEF
CALL set hexcolors=%%HEX:~%rand%,1%%
color 0%hexcolors%

:Start
CLS
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
echo         �U [4]Run Bhop only       ���л�����  
echo         �U [5]Run Clicker only    ������������  
echo         �U [6]Run Recoilless only ���л���ѹǹ  
echo         �U [7]Run NetBlocker only ����һ������
echo         �U [8]Exit Starter now    �˳���������
echo         �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
choice /C 12345678 /M ">        Choose a menu option ��ѡ��:    "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 8 GOTO Run_End
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

:Run_End
echo.
echo.
echo.
echo         �������ּ����˳�/Crossfirer will Exit
echo         ......................................
::TIMEOUT /T 3
PING -n 4 127.0.0.1>nul

::��������������������������������-----------------------------------------------------------------------
:Go_SHT
IF exist %~dp0Start_Crossfirer_SHT.ps1 IF exist %~dp0Crossfirer_Shooter.ahk (
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_SHT.ps1'"
) ELSE IF exist %~dp0�Զ�����.exe (
    Start "" "%~dp0�Զ�����.exe"
) ELSE (
    echo         �Զ����𲻴���!!!
    PowerShell "[console]::beep(1000,1000)"
)
GOTO:EOF

:Go_C4H
IF exist %~dp0Start_Crossfirer_C4H.ps1 IF exist %~dp0Crossfirer_C4_Hero.ahk (
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_C4H.ps1'"
) ELSE IF exist %~dp0ս������.exe (
    Start "" "%~dp0ս������.exe"
) ELSE (
    echo         ս�����ֲ�����!!!
    PowerShell "[console]::beep(2000,1000)"
)
GOTO:EOF

:Go_BHP
IF exist %~dp0Start_Crossfirer_BHP.ps1 IF exist %~dp0Crossfirer_Bhop.ahk (
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_BHP.ps1'"
) ELSE IF exist %~dp0������.exe (
    Start "" "%~dp0������.exe"
) ELSE (
    echo         ������������!!!
    PowerShell "[console]::beep(3000,1000)"
)
GOTO:EOF

:Go_CLK
IF exist %~dp0Start_Crossfirer_CLK.ps1 IF exist %~dp0Crossfirer_Clicker.ahk (
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_CLK.ps1'"
) ELSE IF exist %~dp0��������.exe (
    Start "" "%~dp0��������.exe"
) ELSE (
    echo         �������ֲ�����!!!
    PowerShell "[console]::beep(4000,1000)"
)
GOTO:EOF

:Go_RCL
IF exist %~dp0Start_Crossfirer_RCL.ps1 IF exist %~dp0Crossfirer_Recoilless.ahk (
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_RCL.ps1'"
) ELSE IF exist %~dp0����ѹǹ.exe (
    Start "" "%~dp0����ѹǹ.exe"
) ELSE (
    echo         ����ѹǹ������!!!
    PowerShell "[console]::beep(5000,1000)"
)
GOTO:EOF

:Go_NBK
IF exist %~dp0Start_Crossfirer_NBK.ps1 IF exist %~dp0Crossfirer_NetBlocker.ahk (
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_NBK.ps1'"
) ELSE IF exist %~dp0һ������.exe (
    Start "" "%~dp0һ������.exe"
) ELSE (
    echo         һ������������!!!
    PowerShell "[console]::beep(6000,1000)"
)
GOTO:EOF

:Go_CTL
IF exist %~dp0Start_Crossfirer_CTL.ps1 IF exist %~dp0Crossfirer_Controller.ahk (
    PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_CTL.ps1'"
) ELSE IF exist %~dp0���ֿ���.exe (
    Start "" "%~dp0���ֿ���.exe"
) ELSE (
    echo         ���ֿ��Ʋ�����!!!
    PowerShell "[console]::beep(7000,1000)"
)
GOTO:EOF