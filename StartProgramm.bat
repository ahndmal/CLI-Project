@ECHO off
cls
:start
ECHO.
ECHO 1. User control
ECHO 2. System options
ECHO 3. Print Test
ECHO 4. End of programm
set /p choice=Enter Number...
@echo. 
:selectMenu
if '%choice%'=='' ECHO "%choice%"  ... is not correct option, please try again
if '%choice%'=='1' goto user_control
if '%choice%'=='2' goto system_options
if '%choice%'=='3' goto test
if '%choice%'=='4' goto end
ECHO.

:bye
ECHO BYE
goto start
:test
ECHO TEST
goto start

:user_control
ECHO.
ECHO 1. User menu 1
ECHO 2. User menu 2
ECHO 3. User menu 3
ECHO 4. End of programm
ECHO 5. Back to main menu
set /p choice=Enter Number...

:system_options
ECHO.
ECHO 1. Select server
ECHO 2. Select version
set /p choice=Enter Number...
@echo. 
:selectMenu
if '%choice%'=='' ECHO "%choice%"  ... is not correct option, please try again
if '%choice%'=='1' goto server_options
if '%choice%'=='2' goto test
if '%choice%'=='3' goto test
if '%choice%'=='4' goto end
ECHO.

:server_options
ECHO.
ECHO 1. bass
ECHO 2. bassDEV
ECHO 3. bassUAT
ECHO 4. bassDEVQA

@echo. 
:underSelectMenu
if '%choice%'=='' ECHO "%choice%"  ... is not correct option, please try again
if '%choice%'=='1' goto script1
if '%choice%'=='2' goto script2
if '%choice%'=='3' goto script3
if '%choice%'=='4' goto end
if '%choice%'=='5' goto start

:script1
ECHO Action 1
goto user_control
:script2
ECHO Action 2
goto system_options
:script3
ECHO Action 3
goto user_control


goto user_control
:bye
ECHO BYE
goto start
:test
ECHO TEST
goto start
:end
exit