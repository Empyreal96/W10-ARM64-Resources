echo Disable Cortana Reg > C:\SetupLogs\CortOff.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v BingSearchEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v  AllowSearchToUseLocation /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v  CortanaConsent  /t REG_DWORD /d 0 /f

echo Spotlight Disable Reg > C:\SetupLogs\SpotOff.txt
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v ContentDeliveryAllowed /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RotatingLockScreenEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RotatingLockScreenOverlayEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsSpotlightFeatures /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v NoChangingLockScreen /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338388Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-338389Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SubscribedContent-353696Enabled /t REG_DWORD /d 0 /f
reg load HKLM\defuser %USERPROFILES%\default\ntuser.dat >NUL 2>&1
reg add "HKLM\defuser\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v RotatingLockScreenOverlayEnabled /t REG_DWORD /d 0 /f >NUL 2>&1
reg unload HKLM\defuser >NUL 2>&1

echo Windows Registry Editor Version 5.00 > C:\SetupLogs\NoInkLearn.reg
echo. >> C:\SetupLogs\NoInkLearn.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization] >> C:\SetupLogs\NoInkLearn.reg
echo "RestrictImplicitInkCollection"=dword:00000001 >> C:\SetupLogs\NoInkLearn.reg
echo "RestrictImplicitTextCollection"=dword:00000001 >> C:\SetupLogs\NoInkLearn.reg
echo. >> C:\SetupLogs\NoInkLearn.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\InputPersonalization\TrainedDataStore] >> C:\SetupLogs\NoInkLearn.reg
echo "HarvestContacts"=dword:00000000 >> C:\SetupLogs\NoInkLearn.reg
echo. >> C:\SetupLogs\NoInkLearn.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Personalization\Settings] >> C:\SetupLogs\NoInkLearn.reg
echo "AcceptedPrivacyPolicy"=dword:00000000 >> C:\SetupLogs\NoInkLearn.reg
echo. >> C:\SetupLogs\NoInkLearn.reg
reg import C:\SetupLogs\NoInkLearn.reg
reg add "HKCU\Software\Policies\Microsoft\Windows\EdgeUI" /v DisableMFUTracking /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
echo Silent App Install Reg > C:\SetupLogs\SilentApp.txt
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 0 /f 
mkdir %userprofile%\Desktop\GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}
echo new user script done > C:\SetupLogs\usrscrptdone.txt