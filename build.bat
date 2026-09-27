@echo off
setlocal
echo ==========================================
echo EcoScope - Company Review and Skill Transparency
echo ==========================================
echo.

if exist "C:\msys64\ucrt64\bin\g++.exe" (
    set "PATH=C:\msys64\ucrt64\bin;%PATH%"
    set "COMPILER=C:\msys64\ucrt64\bin\g++.exe"
    set "EXTRA_FLAGS=-I C:\msys64\ucrt64\include -L C:\msys64\ucrt64\lib -DFREEGLUT_STATIC -static -static-libgcc -static-libstdc++"
) else (
    set "COMPILER=g++"
    set "EXTRA_FLAGS="
)

echo Using compiler: %COMPILER%
echo Compiling source files...

"%COMPILER%" -std=c++17 -O2 -Wall -Wextra ^
main.cpp CGL\cgl.cpp PL\pl.cpp PSOOP\psoop.cpp OOPS\oops.cpp COA\coa.cpp ^
-I. %EXTRA_FLAGS% -lfreeglut -lopengl32 -lglu32 -lgdi32 -lwinmm -o company_review.exe

if errorlevel 1 (
    echo.
    echo BUILD FAILED.
    echo Make sure MSYS2 UCRT64 with FreeGLUT is installed.
    pause
    exit /b 1
)

copy /y company_review.exe EcoScope.exe >nul 2>&1

echo.
echo ==============================================
echo BUILD SUCCESSFUL!
echo Generated: company_review.exe and EcoScope.exe
echo ==============================================
echo.
