@echo off 
CHCP 936
title �ű��������� ����̽����ս��ר��
::����ɶ���ɫ
set /a rand=%random% %% 5
set HEX=9ABEF
call set hexcolors=%%HEX:~%rand%,1%%
color 0%hexcolors%

:Start
CLS
echo         ������ϸ�Ķ�˵��!!!!!!!!!!!!!!!!!!!!!!!!
echo.
echo.
echo         �밴���������/Press any key to continue...
pause >nul

:Option
echo.
echo.
echo       ��ѡ����Ҫ���еĽű�/Please select an option
echo         �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo         �U  [1]Run All Scripts     �������нű�  
echo         �U  [2]Run Shooter only    �����Ի�ű�  
echo         �U  [3]Run C4 Hero only    ����ը����ʱ  
echo         �U  [4]Run Bhop only       ���л�����  
echo         �U  [5]Run Clicker only    ��������ű�  
echo         �U  [6]Run Recoilless only ����ѹǹ�ű�  
echo         �U  [7]Run NetBlocker only �������ٽű�  
echo         �U  [8]Exit Starter now    �˳���������
echo         �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
choice /C 12345678 /M ">        ��ѡ��/Choose a menu option:    "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 8 GOTO End
IF ERRORLEVEL 7 GOTO Run_NBK
IF ERRORLEVEL 6 GOTO Run_RCL
IF ERRORLEVEL 5 GOTO Run_CLK
IF ERRORLEVEL 4 GOTO Run_BHP
IF ERRORLEVEL 3 GOTO Run_C4H
IF ERRORLEVEL 2 GOTO Run_SHT
IF ERRORLEVEL 1 GOTO Run_ALL

:Run_ALL
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_ALL.ps1'"
GOTO Option

:Run_SHT
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_SHT.ps1'"
GOTO Option

:Run_C4H
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_C4H.ps1'"
GOTO Option

:Run_BHP
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_BHP.ps1'"
GOTO Option

:Run_CLK
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_CLK.ps1'"
GOTO Option

:Run_RCL
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_RCL.ps1'"
GOTO Option

:Run_NBK
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '.\Start_Crossfirer_NBK.ps1'"
GOTO Option

:End
echo.
echo.
echo.
echo         �������ּ����˳�/Crossfirer will Exit
echo         ......................................
::TIMEOUT /T 3
PING -n 4 127.0.0.1>nul