disable memory compression PS:  Disable-MMAgent -mc

Windows logo key  + Pause 	Display the System Properties dialog box



rename c:\Windows\SystemApps\Microsoft.Windows.Cortana_cw5n1h2txyewy\

disable hibernation: powercfg -h off


enable PS script for process: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

disable all in Task scheduler:
Microsoft\Windows\Application Experience
Microsoft\Windows\Customer Experience Improvement Program
schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\AitAgent" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /disable
schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /disable
schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable
schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable
schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /disable
schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable
schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /disable
schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /disable
schtasks /Change /TN "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyRefresh" /disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /disable
schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable
schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable
schtasks /Change /TN "Microsoft\Windows\Clip\License Validation" /disable
schtasks /Change /TN "\Microsoft\Windows\ApplicationData\DsSvcCleanup" /disable
schtasks /Change /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\LoginCheck" /disable
schtasks /Change /TN "\Microsoft\Windows\PushToInstall\Registration" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyMonitorToastTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\EnableLicenseAcquisition" /disable
schtasks /Change /TN "\Microsoft\Windows\Subscription\LicenseAcquisition" /disable

Hide lcokscreen:
Type gpedit and hit Enter on your keyboard.
Double-click Administrative Templates.
Double-click Control Panel.
Click Personalization.
Double-click Do not display the lock screen.
Click Enabled.

NoLowDiskSpaceChecks DWORD 1 --> HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer


## App remove


Get-AppxPackage | Select Name, PackageFullName

Get-AppxPackage -allusers PackageFullName | Remove-AppxPackage



To uninstall App Connector:
get-appxpackage *appconnector* | remove-appxpackage

To uninstall App Installer:
get-appxpackage *appinstaller* | remove-appxpackage


To uninstall Camera:
get-appxpackage *camera* | remove-appxpackage

To uninstall Calculator:
get-appxpackage *calculator* | remove-appxpackage

---

To uninstall 3D Builder:
get-appxpackage *3dbuilder* | remove-appxpackage

To uninstall Alarms & Clock:
get-appxpackage *alarms* | remove-appxpackage

To uninstall Calendar and Mail apps together:
get-appxpackage *communicationsapps* | remove-appxpackage

To uninstall Feedback Hub:
get-appxpackage *feedback* | remove-appxpackage

To uninstall Get Office:
get-appxpackage *officehub* | remove-appxpackage

To uninstall Get Started or Tips:
get-appxpackage *getstarted* | remove-appxpackage

To uninstall Get Skype:
get-appxpackage *skypeapp* | remove-appxpackage

To uninstall Groove Music:
get-appxpackage *zunemusic* | remove-appxpackage

To uninstall Groove Music and Movies & TV apps together:
get-appxpackage *zune* | remove-appxpackage

To uninstall Maps:
get-appxpackage *maps* | remove-appxpackage

To uninstall Messaging and Skype Video apps together:
get-appxpackage *messaging* | remove-appxpackage

To uninstall Microsoft Solitaire Collection:
get-appxpackage *solitaire* | remove-appxpackage

To uninstall Microsoft Wallet:
get-appxpackage *wallet* | remove-appxpackage

To uninstall Microsoft Wi-Fi:
get-appxpackage *connectivitystore* | remove-appxpackage

To uninstall Money:
get-appxpackage *bingfinance* | remove-appxpackage

To uninstall Money, News, Sports and Weather apps together:
get-appxpackage *bing* | remove-appxpackage

To uninstall Movies & TV:
get-appxpackage *zunevideo* | remove-appxpackage

To uninstall News:
get-appxpackage *bingnews* | remove-appxpackage

To uninstall OneNote:
get-appxpackage *onenote* | remove-appxpackage

To uninstall Paid Wi-Fi & Cellular:
get-appxpackage *oneconnect* | remove-appxpackage

To uninstall Paint 3D:
get-appxpackage *mspaint* | remove-appxpackage

To uninstall People:
get-appxpackage *people* | remove-appxpackage

To uninstall Phone:
get-appxpackage *commsphone* | remove-appxpackage

To uninstall Phone Companion:
get-appxpackage *windowsphone* | remove-appxpackage

To uninstall Phone and Phone Companion apps together:
get-appxpackage *phone* | remove-appxpackage

To uninstall Photos:
get-appxpackage *photos* | remove-appxpackage

To uninstall Sports:
get-appxpackage *bingsports* | remove-appxpackage

To uninstall Sticky Notes:
get-appxpackage *sticky* | remove-appxpackage

To uninstall Sway:
get-appxpackage *sway* | remove-appxpackage

To uninstall View 3D:
get-appxpackage *3d* | remove-appxpackage

To uninstall Voice Recorder:
get-appxpackage *soundrecorder* | remove-appxpackage

To uninstall Weather:
get-appxpackage *bingweather* | remove-appxpackage

To uninstall Windows Holographic:
get-appxpackage *holographic* | remove-appxpackage

To uninstall Windows Store: (Be very careful!)
get-appxpackage *windowsstore* | remove-appxpackage

To uninstall Xbox:
get-appxpackage *xbox* | remove-appxpackage