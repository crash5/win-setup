REM Disable SmartScreen
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v EnableSmartScreen /t REG_DWORD /d "0" /f
reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\MicrosoftEdge\PhishingFilter /v EnabledV9 /t REG_DWORD /d "0" /f

REM Open shared folder in Explorer
explorer.exe C:\Users\WDAGUtilityAccount\Desktop\vmshared
