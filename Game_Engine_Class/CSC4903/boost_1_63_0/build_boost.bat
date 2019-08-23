@echo off
cls

set DRIVE_LETTER=%1:
set TDM=%DRIVE_LETTER%/TDM-GCC-64
set PATH=%TDM%/bin;C:/Windows

::bootstrap gcc
bjam toolset=gcc --build-type=complete --with-thread --with-chrono --with-date_time --with-atomic