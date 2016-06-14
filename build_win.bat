@echo off

:: public dir's
set SRC_DIR=src
set OUT_DIR=cpp_out

:: private dir's
set ROOT_DIR=%CD%
set PROTOC=%ROOT_DIR%\bin_win\protoc.exe
set OUT_DIR_=%ROOT_DIR%\%OUT_DIR%\
set SRC_DIR=%ROOT_DIR%\%SRC_DIR%

:: make output dir
mkdir %OUT_DIR_%

cd %SRC_DIR%
:: foreach all proto files and save output to output-dir
FOR /R %%G IN (*.proto) DO (
	echo %%G
	%PROTOC% -I=%SRC_DIR% --cpp_out=%OUT_DIR_% %%G
)

PAUSE