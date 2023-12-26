# Windows 10 First Steps


## Key Combinations

| Key | Description |
|-----|-------------|
| Win + Pause | Display the System Properties |


## General

- Disable memory compression PS:  Disable-MMAgent -mc
- Disable hibernation CMD: powercfg -h off
- Enable PS script for actual process: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
- Hide lockscreen: gpedit > Administrative Templates > Control Panel > Personalization > Do not display the lock screen: Enabled
- Run PS script method CMD: if not exist success.log cmd /c powershell.exe -executionpolicy bypass our.ps1 > success.log
- Add QuickLaunch toolbar: %UserProfile%\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch
- Bitlocker without TPM: gpedit -> Computer Configuration > Administrative Templates > Windows Components > BitLocker Drive Encryption > Operating System Drives: Require additional authentication at startup
- Startup folder: %UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
## App remove

- Package List PS: Get-AppxPackage | Select Name, PackageFullName
- Remove package: Get-AppxPackage -allusers <PackageFullName> | Remove-AppxPackage


## Local Group Policy editor (win+r > gpedit.msc):

- Disable LLMNR:
    Computer Configuration -> Administrative Templates -> Network -> DNS Client
    Enable Turn Off Multicast Name Resolution policy by changing its value to Enabled



TODO:
powercfg /requests

list devices which can wake up the computer from sleep: powercfg /devicequery wake_armed
