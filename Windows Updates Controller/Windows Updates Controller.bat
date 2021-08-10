@ECHO OFF
MODE con:cols=81 lines=30
TITLE Windows Updates Controller v1.0

FLTMC >NUL 2>&1 || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\GetAdmin.vbs"
    ECHO UAC.ShellExecute "%~FS0", "", "", "runas", 1 >> "%TEMP%\GetAdmin.vbs"
    CMD /U /C TYPE "%TEMP%\GetAdmin.vbs">"%TEMP%\GetAdminUnicode.vbs"
    CSCRIPT //NOLOGO "%TEMP%\GetAdminUnicode.vbs"
    DEL /F /Q "%TEMP%\GetAdmin.vbs" >NUL 2>&1
    DEL /F /Q "%TEMP%\GetAdminUnicode.vbs" >NUL 2>&1
    EXIT
)

@REM Global Color Variables
SET "C_Red=[1;31m"
SET "C_Green=[1;32m"
SET "C_Yellow=[1;33m"
SET "C_Blue=[1;34m"
SET "C_Violate=[1;35m"
SET "C_Cyan=[1;36m"
SET "C_DEFAULT=%C_Yellow%"

@REM Other Global Variables
@REM Unicode Symbols ■
SET "Status_Symbol=@"
SET "APPLIED=%C_Green%%Status_Symbol%%C_DEFAULT%"
SET "NOT_APPLIED=%C_Red%%Status_Symbol%%C_DEFAULT%"
SET "Bullet_Point1=%C_Yellow%%Status_Symbol%%C_DEFAULT%"
SET "Bullet_Point2=%C_Violate%%Status_Symbol%%C_DEFAULT%"


@REM ::::::::::::::::::::::::::::::
@REM ::                          ::
@REM ::      Windows Update      ::
@REM ::                          ::
@REM ::::::::::::::::::::::::::::::
:Windows_Update
MODE con:cols=81 lines=30
CLS
COLOR 0E
SET Menu_Name=Menu
SET Menu_Address=Windows_Update

SET "Update_Disable_Status=%NOT_APPLIED%"
SET "Update_Enable_Status=%APPLIED%"
REG QUERY "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" >NUL 2>&1
IF %ERRORLEVEL% EQU 0 (
    SET "Service_Name=wuauserv"
    CALL :Check_Service_Disabled
    IF DEFINED IS_SERVICE_DISABLED (
        SET "Update_Disable_Status=%APPLIED%"
        SET "Update_Enable_Status=%NOT_APPLIED%"
    )
)

SET "Update_Enable_Status_A=%NOT_APPLIED%"
SET "Update_Enable_Status_B=%NOT_APPLIED%"
SET "Update_Enable_Status_C=%NOT_APPLIED%"

SET "REG_KEY=HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU"
SET "REG_DATA=AUOptions"
SET "REG_VALUE="


CALL :Check_REG_Value
IF "%REG_VALUE%" EQU "0x2" (
    SET "Update_Enable_Status_A=%APPLIED%"
)
IF "%REG_VALUE%" EQU "0x3" (
    SET "Update_Enable_Status_B=%APPLIED%"
)
IF "%REG_VALUE%" EQU "0x4" (
    SET "Update_Enable_Status_c=%APPLIED%"
)

CALL :Header
ECHO.
ECHO  -------------------------------------------------------------------------------
ECHO  ^|       Please apply %C_Cyan%After Update Tweaks%C_DEFAULT% after install %C_Green%Windows Update%C_DEFAULT%.        ^|
ECHO  ^|  Because after you update windows it can ^change all the %C_Red%Tweaks%C_DEFAULT% I've added.  ^|
ECHO  -------------------------------------------------------------------------------
CALL :TWO_ECHO
ECHO  %C_Cyan%^<%C_Red%General Settings%C_Cyan%^>%C_DEFAULT%
ECHO  1. %Bullet_Point1% After Update Tweaks
ECHO  2. %Update_Disable_Status% Disable Windows Update
ECHO  3. %Update_Enable_Status% Enable Windows Update
ECHO.
ECHO  %C_Cyan%^<%C_Red%Advanced Settings%C_Cyan%^>%C_DEFAULT%
ECHO  A. %Update_Enable_Status_A% Check ^& Notify ^If Updates Available
ECHO  B. %Update_Enable_Status_B% Check ^& Download ^If Updates Available
ECHO  C. %Update_Enable_Status_C% Automatically Download and Install Updates
ECHO.
CHOICE /C:123ABC /N /M "Enter your choice: "
ECHO.
IF ERRORLEVEL 6 GOTO Download_and_Install
IF ERRORLEVEL 5 GOTO Check_and_Download
IF ERRORLEVEL 4 GOTO Notify_Only
IF ERRORLEVEL 3 GOTO en_Windows_Update
IF ERRORLEVEL 2 GOTO ds_Windows_Update
IF ERRORLEVEL 1 GOTO after_update_tweaks



:ds_Windows_Update
ECHO %C_DEFAULT% -^> Disabling Windows Update.... %C_Green%
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f >NUL 2>&1
NET STOP wuauserv >NUL 2>&1
SC CONFIG wuauserv start= disabled
NET STOP wuauserv >NUL 2>&1
CALL :END_LINE_RSRT

:en_Windows_Update
ECHO %C_DEFAULT% -^> Enabling Windows Update.... %C_Green% 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /f >NUL 2>&1
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /f >NUL 2>&1
SC CONFIG wuauserv start= demand
NET START wuauserv >NUL 2>&1
CALL :END_LINE_RSRT

:Notify_Only
ECHO %C_DEFAULT% -^> Enabling Check ^& Notify ^If Updates Available... %C_Green% 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
CALL :END_LINE

:Check_and_Download
ECHO %C_DEFAULT% -^> Enabling Check ^& Download ^If Updates Available... %C_Green% 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "3" /f
CALL :END_LINE

:Download_and_Install
ECHO %C_DEFAULT% -^> Automatically Download and Install Updates... %C_Green% 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "4" /f
CALL :END_LINE



:after_update_tweaks
MODE con:cols=81 lines=50
CLS
COLOR 0E
CALL :Header

ECHO --^> Ads From Windows Store Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Downloaded Files From Being Blocked Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Get Suggestion When Using Windows Disabled
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Lockscreen Fun Facts, Tips Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Online Services for Narrator Disabled
REG ADD "HKCU\Software\Microsoft\Narrator\NoRoam" /v "OnlineServicesEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Office Telemetry Or Data Collection For Telemetry Agent Disabled
REG ADD "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common" /v "qmenable" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Firstrun" /v "disablemovie" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Online Tips And Help For Settings App Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Store App Auto Install Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Suggestions In Timeline Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Thumbsdb On Network Drives Disabled
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableThumbsDBOnNetworkFolders" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Transmission Of Typing Info Disabled
REG ADD "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Windows Error Reporting Current User Disabled
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Windows Explorer Ads Disabled
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Windows Feedback Disabled
REG ADD "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Windows Update Peer ^& PeerNet Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Auto Game Mode Disabled
REG ADD "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Game Bar Tips Disabled
REG ADD "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Show Me Tips About Windows Disabled
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Show Suggestions On Start Disabled
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Windows Welcome Experience Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Activity History Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Advertising With BT Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" /v "AllowAdvertising" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Advertising Info Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> App Telemetry Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Apps and Icons Auto Update Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Camera In LockScreen Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Conducting Experiment Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Customer Experience Improvement Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Data Collections Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Feedback Reminder Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Gamebar Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Handwriting Data Sharing Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Handwriting Error Reporting Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> Logging Disabled
REG ADD "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\ControlSet001\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1
REG ADD "HKLM\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >NUL 2>&1

ECHO --^> MAP Data Auto Download Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AutoDownloadAndUpdateMapData" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AllowUntriggeredNetworkTrafficOnSettingsPage" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> MS Products Auto Update Disabled
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> Text Message Cloud Backup Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /v "AllowMessageSync" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> WD Malware Report Collection Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f >NUL 2>&1

ECHO --^> WD Smart Screen Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> WD Submitting Sample Data To Microsoft Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f >NUL 2>&1

ECHO --^> Downloading App Updates Automatically Disabled
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d "2" /f >NUL 2>&1

ECHO --^> Content Delivery Manager Reverting Feature Configuration Permission Disabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d "0" /f >NUL 2>&1
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f >NUL 2>&1

ECHO --^> "Do This For All Current Items Check box By Default" Enabled
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "ConfirmationCheckBoxDoForAll" /t REG_DWORD /d "1" /f >NUL 2>&1
CALL :END_LINE


:ds_Windows_Update
ECHO [1;33m -^> Disabling Windows Update.... [1;32m
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f >NUL 2>&1
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f >NUL 2>&1
net stop wuauserv >NUL 2>&1
sc config wuauserv start= disabled
net stop wuauserv >NUL 2>&1
CALL :END_LINE_RSRT

:en_Windows_Update
ECHO [1;33m -^> Enabling Windows Update.... [1;32m 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /f >NUL 2>&1
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /f >NUL 2>&1
sc config wuauserv start= demand
net start wuauserv >NUL 2>&1
CALL :END_LINE_RSRT



:END_LINE
ECHO.
ECHO [1;36m ^=^> Press Any Key To Go %Menu_Name%[1;33m
PAUSE >NUL 2>&1
GOTO %Menu_Address%
EXIT /B

:END_LINE_RSRT
ECHO.
ECHO [1;36m ^=^> Please Restart Windows to Apply This Tweak Properly
ECHO  ^=^> Press Any Key To Go %Menu_Name%[1;33m
PAUSE >NUL 2>&1
GOTO %Menu_Address%
EXIT /B

:Header
ECHO  	            [1;31m====================================
ECHO 	            ^|^|  Windows Updates Controller v1 ^|^|
ECHO 	            ====================================[1;33m
ECHO.
EXIT /B

:TWO_ECHO
ECHO.
ECHO.
EXIT /B

:Check_REG_Value
@REM REG_TYPE is not being used right now that's why I kept it disable.
@REM SET "REG_TYPE="
REG QUERY "%REG_KEY%" /v "%REG_DATA%" >NUL 2>&1
IF %ERRORLEVEL% EQU 0 (
    @REM FOR /F "TOKENS=2" %%A IN ('REG QUERY "%REG_KEY%" /v "%REG_DATA%"') DO (SET "REG_TYPE=%%A")
    FOR /F "TOKENS=3" %%A IN ('REG QUERY "%REG_KEY%" /v "%REG_DATA%"') DO (SET "REG_VALUE=%%A")
)
EXIT /B

:Check_Service_Disabled
SET "IS_SERVICE_DISABLED="
FOR /F "TOKENS=4" %%A IN ('"SC QC "%Service_Name%" | FINDSTR /I "DISABLED""') DO (SET "IS_SERVICE_DISABLED=true" && EXIT /B)
EXIT /B
