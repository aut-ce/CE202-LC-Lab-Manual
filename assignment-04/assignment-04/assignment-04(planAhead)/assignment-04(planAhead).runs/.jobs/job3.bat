@echo off

rem  PlanAhead(TM)
rem  launch.bat: a PlanAhead-generated ExploreAhead Script
rem  Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.


setlocal

set HD_LDIR=%~dp0

rem *** Create Queue Clues
set HD_RUNDIR=%HD_LDIR%\..\synth_1
if exist "%HD_RUNDIR%" echo. > "%HD_RUNDIR%/.XST.queue.rst"


rem *** Launch Runs (one at a time)
set HD_RUNBAT=%HD_LDIR%\..\synth_1\runme.bat
if exist "%HD_RUNBAT%" call "%HD_RUNBAT%" %*


