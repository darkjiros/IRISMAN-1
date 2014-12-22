@echo off
set PS3DEV=./ps3dev
set PS3SDK=/c/PSDK3v2
set WIN_PS3SDK=C:/PSDK3v2
set PATH=%WIN_PS3SDK%/mingw/msys/1.0/bin;%WIN_PS3SDK%/mingw/bin;%PS3DEV%/ppu/bin;
rem %PATH%;

make all

if not exist mamba mkdir mamba
del mamba\*.bin>nul

if exist mamba_3_41.lz.bin     move  mamba_3_41.lz.bin     MAMBA\mamba_341C.lz.bin>nul
if exist mamba_3_55.lz.bin     move  mamba_3_55.lz.bin     MAMBA\mamba_355C.lz.bin>nul
if exist mamba_3_55DEX.lz.bin  move  mamba_3_55DEX.lz.bin  MAMBA\mamba_355D.lz.bin>nul
if exist mamba_4_21.lz.bin     move  mamba_4_21.lz.bin     MAMBA\mamba_421C.lz.bin>nul
if exist mamba_4_21DEX.lz.bin  move  mamba_4_21DEX.lz.bin  MAMBA\mamba_421D.lz.bin>nul
if exist mamba_4_30.lz.bin     move  mamba_4_30.lz.bin     MAMBA\mamba_430C.lz.bin>nul
if exist mamba_4_30DEX.lz.bin  move  mamba_4_30DEX.lz.bin  MAMBA\mamba_430D.lz.bin>nul
if exist mamba_4_31.lz.bin     move  mamba_4_31.lz.bin     MAMBA\mamba_431C.lz.bin>nul
if exist mamba_4_40.lz.bin     move  mamba_4_40.lz.bin     MAMBA\mamba_440C.lz.bin>nul
if exist mamba_4_41.lz.bin     move  mamba_4_41.lz.bin     MAMBA\mamba_441C.lz.bin>nul
if exist mamba_4_41DEX.lz.bin  move  mamba_4_41DEX.lz.bin  MAMBA\mamba_441D.lz.bin>nul
if exist mamba_4_46.lz.bin     move  mamba_4_46.lz.bin     MAMBA\mamba_446C.lz.bin>nul
if exist mamba_4_46DEX.lz.bin  move  mamba_4_46DEX.lz.bin  MAMBA\mamba_446D.lz.bin>nul
if exist mamba_4_50.lz.bin     move  mamba_4_50.lz.bin     MAMBA\mamba_450C.lz.bin>nul
if exist mamba_4_50DEX.lz.bin  move  mamba_4_50DEX.lz.bin  MAMBA\mamba_450D.lz.bin>nul
if exist mamba_4_53.lz.bin     move  mamba_4_53.lz.bin     MAMBA\mamba_453C.lz.bin>nul
if exist mamba_4_53DEX.lz.bin  move  mamba_4_53DEX.lz.bin  MAMBA\mamba_453D.lz.bin>nul
if exist mamba_4_55.lz.bin     move  mamba_4_55.lz.bin     MAMBA\mamba_455C.lz.bin>nul
if exist mamba_4_55DEX.lz.bin  move  mamba_4_55DEX.lz.bin  MAMBA\mamba_455D.lz.bin>nul
if exist mamba_4_60.lz.bin     move  mamba_4_60.lz.bin     MAMBA\mamba_460C.lz.bin>nul
if exist mamba_4_65.lz.bin     move  mamba_4_65.lz.bin     MAMBA\mamba_465C.lz.bin>nul
if exist mamba_4_65DEX.lz.bin  move  mamba_4_65DEX.lz.bin  MAMBA\mamba_465D.lz.bin>nul
if exist mamba_4_66.lz.bin     move  mamba_4_66.lz.bin     MAMBA\mamba_466C.lz.bin>nul

if exist mamba_341C.bin        del mamba_341C.bin>nul
if exist mamba_355C.bin        del mamba_355C.bin>nul
if exist mamba_355D.bin        del mamba_355D.bin>nul
if exist mamba_421C.bin        del mamba_421C.bin>nul
if exist mamba_421D.bin        del mamba_421D.bin>nul
if exist mamba_430C.bin        del mamba_430C.bin>nul
if exist mamba_430D.bin        del mamba_430D.bin>nul
if exist mamba_431C.bin        del mamba_431C.bin>nul
if exist mamba_440C.bin        del mamba_440C.bin>nul
if exist mamba_441C.bin        del mamba_441C.bin>nul
if exist mamba_441D.bin        del mamba_441D.bin>nul
if exist mamba_446C.bin        del mamba_446C.bin>nul
if exist mamba_446D.bin        del mamba_446D.bin>nul
if exist mamba_450C.bin        del mamba_450C.bin>nul
if exist mamba_450D.bin        del mamba_450D.bin>nul
if exist mamba_453C.bin        del mamba_453C.bin>nul
if exist mamba_453D.bin        del mamba_453D.bin>nul
if exist mamba_455C.bin        del mamba_455C.bin>nul
if exist mamba_455D.bin        del mamba_455D.bin>nul
if exist mamba_460C.bin        del mamba_460C.bin>nul
if exist mamba_465C.bin        del mamba_465C.bin>nul
if exist mamba_465D.bin        del mamba_465D.bin>nul
if exist mamba_466C.bin        del mamba_466C.bin>nul

if exist mamba_3_41.bin        ren  mamba_3_41.bin        mamba_341C.bin
if exist mamba_3_55.bin        ren  mamba_3_55.bin        mamba_355C.bin
if exist mamba_3_55DEX.bin     ren  mamba_3_55DEX.bin     mamba_355D.bin
if exist mamba_4_21.bin        ren  mamba_4_21.bin        mamba_421C.bin
if exist mamba_4_21DEX.bin     ren  mamba_4_21DEX.bin     mamba_421D.bin
if exist mamba_4_30.bin        ren  mamba_4_30.bin        mamba_430C.bin
if exist mamba_4_30DEX.bin     ren  mamba_4_30DEX.bin     mamba_430D.bin
if exist mamba_4_31.bin        ren  mamba_4_31.bin        mamba_431C.bin
if exist mamba_4_40.bin        ren  mamba_4_40.bin        mamba_440C.bin
if exist mamba_4_41.bin        ren  mamba_4_41.bin        mamba_441C.bin
if exist mamba_4_41DEX.bin     ren  mamba_4_41DEX.bin     mamba_441D.bin
if exist mamba_4_46.bin        ren  mamba_4_46.bin        mamba_446C.bin
if exist mamba_4_46DEX.bin     ren  mamba_4_46DEX.bin     mamba_446D.bin
if exist mamba_4_50.bin        ren  mamba_4_50.bin        mamba_450C.bin
if exist mamba_4_50DEX.bin     ren  mamba_4_50DEX.bin     mamba_450D.bin
if exist mamba_4_53.bin        ren  mamba_4_53.bin        mamba_453C.bin
if exist mamba_4_53DEX.bin     ren  mamba_4_53DEX.bin     mamba_453D.bin
if exist mamba_4_55.bin        ren  mamba_4_55.bin        mamba_455C.bin
if exist mamba_4_55DEX.bin     ren  mamba_4_55DEX.bin     mamba_455D.bin
if exist mamba_4_60.bin        ren  mamba_4_60.bin        mamba_460C.bin
if exist mamba_4_65.bin        ren  mamba_4_65.bin        mamba_465C.bin
if exist mamba_4_65DEX.bin     ren  mamba_4_65DEX.bin     mamba_465D.bin
if exist mamba_4_66.bin        ren  mamba_4_66.bin        mamba_466C.bin

:copy *.lz.bin ..\datas\*
pause
