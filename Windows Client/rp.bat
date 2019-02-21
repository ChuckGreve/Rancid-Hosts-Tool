@echo off
set arg1=%1
set arg2=%2
set arg3=%3

"plink.exe" -ssh USERNAME@RANCID -pw YOURPASSWORD "/YOUR/PATH/TO/THE/RANCID/SCRIPT %1 %2 %3"