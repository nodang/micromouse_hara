title _666_cpu(TMS2809)_monitor_compile
color 00

set PATH_BAT=..
set TARGET_BAT=a_hara_monitor2809

cls

%PATH_BAT%\Compiler\bin\make clean
%PATH_BAT%\Compiler\bin\make all
%PATH_BAT%\Compiler\bin\hex2000 %TARGET_BAT%.out -o %TARGET_BAT%.hex -map %TARGET_BAT%.map -i -datawidth 16 -memwidth 16 -romwidth 16 

@echo Compile Time %DATE% %TIME%
