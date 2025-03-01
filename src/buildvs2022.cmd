@echo off
set xsoldpath=%path%
SET VSVERSION=2022
if "%VSEDITION%" == "" SET VSEDITION=Enterprise
set VsBatch="C:\Program Files\Microsoft Visual Studio\%VSVERSION%\%VSEDITION%\Common7\Tools\VsDevCmd.bat"
if not exist %VsBatch% goto VsError
if "%VSSDKINSTALL%" == "" call %VsBatch%
if /i "%1" == "Debug" goto Ok
if /i "%1" == "Release" goto Ok
goto Error
:Ok
Echo 构建与集成64位%1配置
"%msbuilddir%msbuild" VsIntegration2022.sln  /fl2 /flp1:Append;Verbosity=diag /p:Configuration=%1 /t:Rebuild  /m /v:q /nologo 
if exist build2022-%1.log del build2022-%1.log
rename msbuild2.log build2022-%1.log
Goto End
:Error
echo 语法：Build2022调试或生成发布
goto End
:VsError
echo 找不到 VS %VSVERSION% 命令提示符
goto end
:End
set path=%xsoldpath%
set xsoldpath=

