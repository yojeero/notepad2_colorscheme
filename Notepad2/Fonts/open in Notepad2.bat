@echo off
SET st3Path=C:\Program Files\Notepad2\Notepad2e.exe

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Notepad2"         /t REG_EXPAND_SZ /v "" /d "Notepad2"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Notepad2"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Notepad2\command" /t REG_EXPAND_SZ /v "" /d "%st3Path% \"%%1\"" /f
 
rem add it for right click on explorer
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Notepad2"         /t REG_EXPAND_SZ /v "" /d "Notepad2"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Notepad2"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Notepad2\command" /t REG_EXPAND_SZ /v "" /d "%st3Path% \"%%V\"" /f 

rem add it for right click on explorer
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Notepad2"         /t REG_EXPAND_SZ /v "" /d "Notepad2"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Notepad2"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Notepad2\command" /t REG_EXPAND_SZ /v "" /d "%st3Path% \"%%V\"" /f
pause