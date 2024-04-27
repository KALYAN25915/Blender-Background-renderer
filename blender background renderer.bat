@echo off

rem Prompt the user to input Blender file path
set /p BLENDER_FILE="Enter the path to your Blender file (.blend): "

rem Prompt the user to input the output directory for rendered images
set /p OUTPUT_DIR="Enter the output directory for rendered images: "

rem Extract the filename and directory path from the provided output directory path
for /f "delims=" %%I in ("%OUTPUT_DIR%") do (
    set "FILENAME=%%~nxI"
    set "DIRPATH=%%~dpI"
)

rem Prompt the user to input the start frame
set /p START_FRAME="Enter the start frame number: "

rem Prompt the user to input the end frame
set /p END_FRAME="Enter the end frame number: "

rem Set the frame step to 1
set FRAME_STEP=1

rem Set the path to your Blender executable
set BLENDER_PATH="C:\Program Files\Blender Foundation\Blender 4.0\blender.exe"

rem Render the animation
%BLENDER_PATH% -b "%BLENDER_FILE%" -o "%DIRPATH%%FILENAME%_####" -s %START_FRAME% -e %END_FRAME% -a -j %FRAME_STEP%


pause