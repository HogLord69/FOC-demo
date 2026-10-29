@echo off
rem Makes a desktop shortcut to FOC, with its icon, for wherever this folder is.
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -Command "$d=[Environment]::GetFolderPath('Desktop'); $s=(New-Object -ComObject WScript.Shell).CreateShortcut((Join-Path $d 'FOC.lnk')); $s.TargetPath='%~dp0fallout2.exe'; $s.WorkingDirectory='%~dp0'; $s.IconLocation='%~dp0foc.ico,0'; $s.Description='FOC, a Fallout 2 mod (demo)'; $s.Save()"
echo A shortcut called FOC is on your desktop.
pause
