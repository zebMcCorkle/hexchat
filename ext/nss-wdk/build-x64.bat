@echo off
set WDK_ROOT=c:\WinDDK\7600.16385.1
set INCLUDE=%WDK_ROOT%\inc\api;%WDK_ROOT%\inc\crt;%WDK_ROOT%\inc\ddk
set LIB=%WDK_ROOT%\lib\wnet\amd64;%WDK_ROOT%\lib\Crt\amd64
set PATH=%PROGRAMFILES(X86)%\Microsoft Visual Studio 10.0\VC\bin\amd64;%PROGRAMFILES(X86)%\Microsoft SDKs\Windows\v7.0A\Bin\x64;c:\mozilla-build\msys\bin;c:\mozilla-build\moztools-x64\bin
set BUILD_OPT=1
set USE_64=1
set WINDDK_BUILD=1
cd mozilla\security\nss
make nss_build_all
cd ..\..\..
echo.Finished!
pause
