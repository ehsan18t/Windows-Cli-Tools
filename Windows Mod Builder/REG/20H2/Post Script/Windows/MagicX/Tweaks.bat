@ECHO OFF
CD /d %~dp0

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "1" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "RotatingLockScreenOverlayEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Narrator\NoRoam" /v "WinEnterLaunchEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Narrator\NoRoam" /v "OnlineServicesEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Office\16.0\Common" /v "sendcustomerdata" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Office\16.0\Common\Feedback" /v "includescreenshot" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Office\16.0\Outlook\Options\Mail" /v "EnableLogging" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Office\16.0\Word\Options" /v "EnableLogging" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Office\Common\ClientTelemetry" /v "DisableTelemetry" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common" /v "qmenable" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common" /v "updatereliabilitydata" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common\General" /v "shownfirstrunoptin" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common\General" /v "skydrivesigninoption" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Common\ptwatson" /v "ptwoptin" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\Firstrun" /v "disablemovie" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM" /v "Enablelogging" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM" /v "EnableUpload" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "accesssolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "olksolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "onenotesolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "pptsolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "projectsolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "publishersolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "visiosolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "wdsolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedapplications" /v "xlsolution" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "agave" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "appaddins" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "comaddins" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "documentfiles" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Policies\Microsoft\Office\16.0\OSM\preventedsolutiontypes" /v "templatefiles" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "AllowOnlineTips" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353698Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "BackupPolicy" /t REG_DWORD /d "60" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "DeviceMetadataUploaded" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "SettingsVersion" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "PriorLogons" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d "5" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableThumbsDBOnNetworkFolders" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d "1" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /v "SystemSettingsDownloadMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v "UseNexusForGameBarEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "AutoCheckSelect" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "2" /f
REG ADD "HKCU\SOFTWARE\Sysinternals\SDelete" /v "EulaAccepted" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\OperationStatusManager" /v "ConfirmationCheckBoxDoForAll" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Ribbon" /v "MinimizedStateTabletModeOff" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\GameBar" /v "ShowStartupPanel" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexOnBattery" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexingOutlook" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexingEmailAttachments" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchPrivacy" /t REG_DWORD /d "3" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchSafeSearch" /t REG_DWORD /d "3" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "ConnectedSearchUseWebOverMeteredConnections" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "PreventRemoteQueries" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "DisableRemovableDriveIndexing" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" /v "AllowAdvertising" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\CrashControl" /v "AutoReboot" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v "NoLockScreenCamera" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /v "AllowExperimentation" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Update" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Update\ExcludeWUDriversInQualityUpdate" /v "value" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\ControlSet001\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
REG ADD "HKLM\SYSTEM\ControlSet001\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AutoDownloadAndUpdateMapData" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /v "AllowUntriggeredNetworkTrafficOnSettingsPage" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "MiscPolicyInfo" /t REG_DWORD /d "2" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "PassedPolicy" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager" /v "ShippedWithReserves" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /v "AllowMessageSync" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\Internet Settings" /v "CallLegacyWCMPolicies" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f
REG ADD "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Speech" /v "AllowSpeechModelUpdate" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge" /v "PreventFirstRunPage" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Security" /v "FlashClickToRunMode" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowTabPreloading" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\TPM" /v "OSManagedAuthLevel" /t REG_DWORD /d "4" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "1" /f
REG ADD "HKLM\Software\Classes\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d "2" /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "BackupPolicy" /t REG_DWORD /d "60" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "DeviceMetadataUploaded" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "SettingsVersion" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "PriorLogons" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d "5" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "SettingsVersion" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f


REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f


REG ADD "HKCR\Directory\shell\Z003AAM" /v "AppliesTo" /t REG_SZ /d "NOT (System.ItemPathDisplay:=\"%SystemDrive%\Users\" OR System.ItemPathDisplay:=\"%UserProfile%\" OR System.ItemPathDisplay:=\"%SystemDrive%\ProgramData\" OR System.ItemPathDisplay:=\"%SystemDrive%\Windows\" OR System.ItemPathDisplay:=\"%SystemDrive%\Windows\System32\" OR System.ItemPathDisplay:=\"%SystemDrive%\Program Files\" OR System.ItemPathDisplay:=\"%SystemDrive%\Program Files (x86)\")" /f
REG ADD "HKCR\Directory\shell\Z006AAO" /v "AppliesTo" /t REG_SZ /d "NOT (System.ItemPathDisplay:=\"%SystemDrive%\Users\" OR System.ItemPathDisplay:=\"%UserProfile%\" OR System.ItemPathDisplay:=\"%SystemDrive%\ProgramData\" OR System.ItemPathDisplay:=\"%SystemDrive%\Windows\" OR System.ItemPathDisplay:=\"%SystemDrive%\Windows\System32\" OR System.ItemPathDisplay:=\"%SystemDrive%\Program Files\" OR System.ItemPathDisplay:=\"%SystemDrive%\Program Files (x86)\")" /f
REG ADD "HKCR\Directory\shell\Z002AAL" /v "AppliesTo" /t REG_SZ /d "NOT (System.ItemPathDisplay:=\"%SystemDrive%\Users\" OR System.ItemPathDisplay:=\"%SystemDrive%\Windows\" OR System.ItemPathDisplay:=\"%SystemDrive%\Windows\System32\")" /f

REG ADD "HKCU\Software\WinRAR" /v "ExportedSettings" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Compression" /v "DefFolder" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Extraction" /v "DefFolder" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Extraction" /v "AppendName" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Extraction" /v "RemoveRedundantFolder" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Extraction" /v "UseExclNames" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Extraction" /v "ExclNames" /t REG_SZ /d "*.exe *.com *.pif *.scr *.bat *.cmd *.lnk" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "Detailed" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "ArchivesFirst" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "ColorAttr" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "AllVolumes" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "ShowSeconds" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "ExactSizes" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "ShowGrid" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "FullRow" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "Checkboxes" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "SingleClick" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "Underline" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\FileList" /v "ArcSort" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\FileList\ArcColumnWidths" /v "name" /t REG_DWORD /d "328" /f
REG ADD "HKCU\Software\WinRAR\FileList\ArcColumnWidths" /v "size" /t REG_DWORD /d "80" /f
REG ADD "HKCU\Software\WinRAR\FileList\ArcColumnWidths" /v "psize" /t REG_DWORD /d "80" /f
REG ADD "HKCU\Software\WinRAR\FileList\ArcColumnWidths" /v "type" /t REG_DWORD /d "120" /f
REG ADD "HKCU\Software\WinRAR\FileList\ArcColumnWidths" /v "mtime" /t REG_DWORD /d "124" /f
REG ADD "HKCU\Software\WinRAR\FileList\ArcColumnWidths" /v "crc" /t REG_DWORD /d "70" /f
REG ADD "HKCU\Software\WinRAR\FileList\FileColumnWidths" /v "name" /t REG_DWORD /d "322" /f
REG ADD "HKCU\Software\WinRAR\FileList\FileColumnWidths" /v "size" /t REG_DWORD /d "129" /f
REG ADD "HKCU\Software\WinRAR\FileList\FileColumnWidths" /v "type" /t REG_DWORD /d "147" /f
REG ADD "HKCU\Software\WinRAR\FileList\FileColumnWidths" /v "mtime" /t REG_DWORD /d "131" /f
REG ADD "HKCU\Software\WinRAR\General" /v "VerInfo" /t REG_BINARY /d "000006006206aa0986d0d601" /f
REG ADD "HKCU\Software\WinRAR\General" /v "Priority" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General" /v "SMP" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General" /v "History" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General" /v "DlgHistory" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General" /v "WizardMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General" /v "OnTop" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General" /v "ShowComment" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General" /v "Log" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General" /v "LimitLog" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General" /v "LogSize" /t REG_DWORD /d "1000" /f
REG ADD "HKCU\Software\WinRAR\General" /v "ReuseWindow" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General" /v "Sound" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General" /v "RestoreFolder" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General" /v "WipeTemp" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General" /v "Threads" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General" /v "LastFolder" /t REG_SZ /d "C:\Users\Ahsan\Desktop" /f
REG ADD "HKCU\Software\WinRAR\General\Toolbar" /v "Size" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\General\Toolbar" /v "ButtonsText" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\General\Toolbar" /v "Lock" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\General\Toolbar\Layout" /v "Band76_0" /t REG_BINARY /d "4c000000730100000402000000000000f0f0f0000000000000000000000000000000000000000000c00202000000000000000000370000000002000000000000000000000000000001000000" /f
REG ADD "HKCU\Software\WinRAR\General\Toolbar\Layout" /v "Band76_1" /t REG_BINARY /d "4c000000730100000500000000000000f0f0f0000000000000000000000000000000000000000000d40202000000000000000000180000002a00000000000000000000000000000002000000" /f
REG ADD "HKCU\Software\WinRAR\General\Toolbar\Layout" /v "Band76_2" /t REG_BINARY /d "4c000000730100000400000000000000f0f0f0000000000000000000000000000000000000000000240017000000000000000000180000006400000000000000000000000000000003000000" /f
REG ADD "HKCU\Software\WinRAR\Interface" /v "FullPathsTitle" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Interface" /v "SystemProgressBar" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Interface" /v "TaskbarProgressBar" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Interface" /v "AsArchives" /t REG_SZ /d "*.exe" /f
REG ADD "HKCU\Software\WinRAR\Interface" /v "ShowPassword" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Interface\Comment" /v "LeftBorder" /t REG_DWORD /d "453" /f
REG ADD "HKCU\Software\WinRAR\Interface\MainWin" /v "Placement" /t REG_BINARY /d "2c0000000000000001000000ffffffffffffffffffffffffffffffff600000004d000000aa0300009c020000" /f
REG ADD "HKCU\Software\WinRAR\Interface\Themes" /v "ShellExtIcon" /t REG_SZ /d "C:\Users\Ahsan\AppData\Roaming\WinRAR\Themes\Win20_JonDemon_32x32\Rar.ico" /f
REG ADD "HKCU\Software\WinRAR\Interface\Themes" /v "ActivePath" /t REG_SZ /d "Win20_JonDemon_32x32" /f
REG ADD "HKCU\Software\WinRAR\Interface\Themes" /v "ShellExtBMP" /t REG_SZ /d "C:\Users\Ahsan\AppData\Roaming\WinRAR\Themes\Win20_JonDemon_32x32\RarSmall.bmp" /f
REG ADD "HKCU\Software\WinRAR\Paths" /v "TempRemovableOnly" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Paths" /v "StartFolder" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Name" /t REG_SZ /d "Default Profile" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Default" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ImmExec" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ExclNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "StoreNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "UseRAR" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "RAR5" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SFXModule" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SFXIcon" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SFXLogo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SFXElevate" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "CmtFile" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "CmtDataWide" /t REG_BINARY /d "0000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "VolumeSize" /t REG_SZ /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "VolSizeMod" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "VolPause" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "OldVolNames" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "RecVolNumber" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Update" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Fresh" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SyncFiles" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Overwrite" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Move" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ArcRecBin" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ArcWipe" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "WipeIfPassword" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Solid" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Test" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "RecEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "RecSize" /t REG_DWORD /d "4294967293" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "EraseDest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "AddArcOnly" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ClearArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Lock" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Method" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "DictSizeLZ" /t REG_DWORD /d "4194304" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "DictSize" /t REG_DWORD /d "33554432" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Background" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "WaitForOther" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "Shutdown" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "PasswordData" /t REG_BINARY /d "00" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "EncryptHeaders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ZipLegacyEncrypt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "OpenShared" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ProcessOwners" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SaveStreams" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SaveSymLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SaveHardLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "GenerateArcName" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "VersionControl" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "BLAKE2" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "FileCopies" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "QuickOpen" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "GenerateMask" /t REG_SZ /d "yyyymmddhhmmss" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "FileTimeMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "FileDays" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "FileHours" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "FileMinutes" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ArcTimeOriginal" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ArcTimeLatest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "mtime" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "ctime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "atime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "PreserveAtime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "PathsAbs" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "PathsNone" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "PathsAbsDrive" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SeparateArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SeparateArcDoubleExt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "SeparateArcSubfolders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "EmailArcTo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\0" /v "PackDetails" /t REG_BINARY /d "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Name" /t REG_SZ /d "Create e-mail attachment" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Default" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ImmExec" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ExclNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "StoreNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "UseRAR" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "RAR5" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SFXModule" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SFXIcon" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SFXLogo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SFXElevate" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "CmtFile" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "CmtDataWide" /t REG_BINARY /d "0000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "VolumeSize" /t REG_SZ /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "VolSizeMod" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "VolPause" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "OldVolNames" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "RecVolNumber" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Update" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Fresh" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SyncFiles" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Overwrite" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Move" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ArcRecBin" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ArcWipe" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "WipeIfPassword" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Solid" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Test" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "RecEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "RecSize" /t REG_DWORD /d "4294967293" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "EraseDest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "AddArcOnly" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ClearArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Lock" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Method" /t REG_DWORD /d "5" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "DictSizeLZ" /t REG_DWORD /d "33554432" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "DictSize" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Background" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "WaitForOther" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "Shutdown" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "PasswordData" /t REG_BINARY /d "00" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "EncryptHeaders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ZipLegacyEncrypt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "OpenShared" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ProcessOwners" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SaveStreams" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SaveSymLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SaveHardLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "GenerateArcName" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "VersionControl" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "BLAKE2" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "FileCopies" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "QuickOpen" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "GenerateMask" /t REG_SZ /d "yyyymmddhhmmss" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "FileTimeMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "FileDays" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "FileHours" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "FileMinutes" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ArcTimeOriginal" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ArcTimeLatest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "mtime" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "ctime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "atime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "PreserveAtime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "PathsAbs" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "PathsNone" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "PathsAbsDrive" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SeparateArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SeparateArcDoubleExt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "SeparateArcSubfolders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "EmailArcTo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\1" /v "PackDetails" /t REG_BINARY /d "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Name" /t REG_SZ /d "Backup selected files" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Default" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ImmExec" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ExclNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "StoreNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "UseRAR" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "RAR5" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SFXModule" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SFXIcon" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SFXLogo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SFXElevate" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "CmtFile" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "CmtDataWide" /t REG_BINARY /d "0000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "VolumeSize" /t REG_SZ /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "VolSizeMod" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "VolPause" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "OldVolNames" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "RecVolNumber" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Update" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Fresh" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SyncFiles" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Overwrite" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Move" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ArcRecBin" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ArcWipe" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "WipeIfPassword" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Solid" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Test" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "RecEnabled" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "RecSize" /t REG_DWORD /d "4294967293" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "EraseDest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "AddArcOnly" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ClearArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Lock" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Method" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "DictSizeLZ" /t REG_DWORD /d "33554432" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "DictSize" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Background" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "WaitForOther" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "Shutdown" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "PasswordData" /t REG_BINARY /d "00" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "EncryptHeaders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ZipLegacyEncrypt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "OpenShared" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ProcessOwners" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SaveStreams" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SaveSymLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SaveHardLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "GenerateArcName" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "VersionControl" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "BLAKE2" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "FileCopies" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "QuickOpen" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "GenerateMask" /t REG_SZ /d "yyyymmddhhmmss" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "FileTimeMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "FileDays" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "FileHours" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "FileMinutes" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ArcTimeOriginal" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ArcTimeLatest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "mtime" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "ctime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "atime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "PreserveAtime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "PathsAbs" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "PathsNone" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "PathsAbsDrive" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SeparateArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SeparateArcDoubleExt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "SeparateArcSubfolders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "EmailArcTo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\2" /v "PackDetails" /t REG_BINARY /d "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Name" /t REG_SZ /d "Create 10 MB volumes" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Default" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ImmExec" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ExclNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "StoreNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "UseRAR" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "RAR5" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SFXModule" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SFXIcon" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SFXLogo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SFXElevate" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "CmtFile" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "CmtDataWide" /t REG_BINARY /d "0000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "VolumeSize" /t REG_SZ /d "10485760" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "VolSizeMod" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "VolPause" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "OldVolNames" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "RecVolNumber" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Update" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Fresh" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SyncFiles" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Overwrite" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Move" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ArcRecBin" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ArcWipe" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "WipeIfPassword" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Solid" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Test" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "RecEnabled" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "RecSize" /t REG_DWORD /d "4294967293" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "EraseDest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "AddArcOnly" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ClearArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Lock" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Method" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "DictSizeLZ" /t REG_DWORD /d "33554432" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "DictSize" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Background" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "WaitForOther" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "Shutdown" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "PasswordData" /t REG_BINARY /d "00" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "EncryptHeaders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ZipLegacyEncrypt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "OpenShared" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ProcessOwners" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SaveStreams" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SaveSymLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SaveHardLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "GenerateArcName" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "VersionControl" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "BLAKE2" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "FileCopies" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "QuickOpen" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "GenerateMask" /t REG_SZ /d "yyyymmddhhmmss" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "FileTimeMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "FileDays" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "FileHours" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "FileMinutes" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ArcTimeOriginal" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ArcTimeLatest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "mtime" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "ctime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "atime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "PreserveAtime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "PathsAbs" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "PathsNone" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "PathsAbsDrive" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SeparateArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SeparateArcDoubleExt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "SeparateArcSubfolders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "EmailArcTo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\3" /v "PackDetails" /t REG_BINARY /d "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Name" /t REG_SZ /d "ZIP archive (low compression)" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Default" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ImmExec" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ExclNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "StoreNames" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "UseRAR" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "RAR5" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SFXModule" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SFXIcon" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SFXLogo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SFXElevate" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "CmtFile" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "CmtDataWide" /t REG_BINARY /d "0000" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "VolumeSize" /t REG_SZ /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "VolSizeMod" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "VolPause" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "OldVolNames" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "RecVolNumber" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Update" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Fresh" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SyncFiles" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Overwrite" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Move" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ArcRecBin" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ArcWipe" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "WipeIfPassword" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Solid" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Test" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "RecEnabled" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "RecSize" /t REG_DWORD /d "4294967293" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "EraseDest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "AddArcOnly" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ClearArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Lock" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Method" /t REG_DWORD /d "3" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Background" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "WaitForOther" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "Shutdown" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "PasswordData" /t REG_BINARY /d "00" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "EncryptHeaders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ZipLegacyEncrypt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "OpenShared" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ProcessOwners" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SaveStreams" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SaveSymLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SaveHardLinks" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "GenerateArcName" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "VersionControl" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "BLAKE2" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "FileCopies" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "QuickOpen" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "GenerateMask" /t REG_SZ /d "yyyymmddhhmmss" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "FileTimeMode" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "FileDays" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "FileHours" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "FileMinutes" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ArcTimeOriginal" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ArcTimeLatest" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "mtime" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "ctime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "atime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "PreserveAtime" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "PathsAbs" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "PathsNone" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "PathsAbsDrive" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SeparateArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SeparateArcDoubleExt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "SeparateArcSubfolders" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "EmailArcTo" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Profiles\4" /v "PackDetails" /t REG_BINARY /d "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
REG ADD "HKCU\Software\WinRAR\Setup" /v "ShellExt" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup" /v "CascadedMenu" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup" /v "MenuIcons" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup" /v "CustomExt" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.001" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.001" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.001" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.001" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.7z" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.7z" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.7z" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.7z" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.arj" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.arj" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.arj" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.arj" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.bz" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.bz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.bz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.bz2" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.bz2" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.bz2" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.bz2" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.cab" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.cab" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.cab" /v "Type" /t REG_SZ /d "CABFolder" /f
REG ADD "HKCU\Software\WinRAR\Setup\.cab" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.gz" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.gz" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.gz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.gz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.iso" /v "Set" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.jar" /v "Set" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lha" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lha" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lha" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lz" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lz" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lzh" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lzh" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lzh" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.lzh" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.rar" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.rar" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.rar" /v "Type" /t REG_SZ /d "VLC.rar" /f
REG ADD "HKCU\Software\WinRAR\Setup\.rar" /v "ShellNew" /t REG_SZ /d "C:\Program Files\WinRAR\rarnew.dat" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tar" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tar" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tar" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tar" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.taz" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.taz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.taz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tbz" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tbz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tbz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tbz2" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tbz2" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tbz2" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tgz" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tgz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tgz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tlz" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tlz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.tlz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.txz" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.txz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.txz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.uu" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.uu" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.uu" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.uue" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.uue" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.uue" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.uue" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.xxe" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.xxe" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.xxe" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.xz" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.xz" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.xz" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.xz" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.z" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.z" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.z" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.z" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zip" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zip" /v "Exist" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zip" /v "Type" /t REG_SZ /d "VLC.zip" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zip" /v "ShellNew" /t REG_SZ /d "C:\Program Files\WinRAR\zipnew.dat" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zipx" /v "Set" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zipx" /v "Exist" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zipx" /v "Type" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\.zipx" /v "ShellNew" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Setup\Links" /v "Desktop" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\Links" /v "StartMenu" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\Links" /v "Programs" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "ExtrTo" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "ExtrHere" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "Extr" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "ExtrSep" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "OpenSFX" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "OpenArc" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "AddTo" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "AddArc" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "EmailArc" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "EmailOpt" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "Test" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "Convert" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "SFXLocal" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "SFXNetwork" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "SFXOther" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "DragAdd" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "DragExtr" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Setup\MenuItems" /v "AlwaysArc" /t REG_SZ /d "*.iso" /f
REG ADD "HKCU\Software\WinRAR\Viewer" /v "Type" /t REG_DWORD /d "2" /f
REG ADD "HKCU\Software\WinRAR\Viewer" /v "Autodetect" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Viewer" /v "ReuseWindow" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\WinRAR\Viewer" /v "Wrap" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\WinRAR\Viewer" /v "ViewerUnpackAll" /t REG_SZ /d "*.exe *.msi *.htm *.html *.part*.rar" /f
REG ADD "HKCU\Software\WinRAR\Viewer" /v "ViewerIgnoreModifications" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\Viewer" /v "ExternalViewer" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\WinRAR\VirusScan" /v "Prompt" /t REG_DWORD /d "1" /f
REG ADD "HKLM\Software\WinRAR" /v "exe64" /t REG_SZ /d "C:\Program Files\WinRAR\WinRAR.exe" /f
REG ADD "HKLM\Software\WinRAR\Capabilities" /v "ApplicationDescription" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".rar" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".zip" /t REG_SZ /d "WinRAR.ZIP" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".cab" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".arj" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".lz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".tlz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".lzh" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".lha" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".7z" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".tar" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".gz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".tgz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".uue" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".xxe" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".uu" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".bz2" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".tbz2" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".bz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".tbz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".jar" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".iso" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".z" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".taz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".xz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".txz" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".zipx" /t REG_SZ /d "WinRAR" /f
REG ADD "HKLM\Software\WinRAR\Capabilities\FileAssociations" /v ".001" /t REG_SZ /d "WinRAR" /f
REG DELETE "HKCR\lnkfile\shellex\ContextMenuHandlers\WinRAR32" /f
REG DELETE "HKCR\lnkfile\shellex\ContextMenuHandlers\WinRAR" /f


REG ADD "HKCU\Software\7-Zip" /v "Path64" /t REG_SZ /d "C:\Program Files\7-Zip\\" /f
REG ADD "HKCU\Software\7-Zip" /v "Path" /t REG_SZ /d "C:\Program Files\7-Zip\\" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "FolderShortcuts" /t REG_BINARY /d "" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "FolderHistory" /t REG_BINARY /d "43003a005c00550073006500720073005c00410064006d0069006e006900730074007200610074006f0072005c004400650073006b0074006f0070005c0037007a0031003900300032002d007800360034002e006500780065005c0000000000" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "PanelPath0" /t REG_SZ /d "C:\Users\Administrator\Desktop\\" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "FlatViewArc0" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "PanelPath1" /t REG_SZ /d "" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "FlatViewArc1" /t REG_DWORD /d "0" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "ListMode" /t REG_DWORD /d "771" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "Position" /t REG_BINARY /d "4e0000002f000000cb0300004002000000000000" /f
REG ADD "HKCU\Software\7-Zip\FM" /v "Panels" /t REG_BINARY /d "0100000000000000b4010000" /f
REG ADD "HKCU\Software\7-Zip\FM\Columns" /v "RootFolder" /t REG_BINARY /d "0100000000000000010000000400000001000000a0000000" /f
REG ADD "HKCU\Software\7-Zip\FM\Columns" /v "7-Zip.7z" /t REG_BINARY /d "0100000004000000010000000400000001000000e20000000700000001000000560000000c000000010000006400000009000000010000004b0000000f00000001000000510000002000000001000000640000001f00000001000000640000000800000001000000640000001300000000000000640000001600000000000000640000001b0000000000000064000000" /f
REG ADD "HKCU\Software\7-Zip\Options" /v "MenuIcons" /t REG_DWORD /d "1" /f
REG ADD "HKCU\Software\7-Zip\Options" /v "ContextMenu" /t REG_DWORD /d "2147488615" /f



COPY /Y "OneTimeNewUserTweak.bat" "%SystemDrive%\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\OneTimeNewUserTweak.bat"
DEL "OneTimeNewUserTweak.bat"

MD "%UserProfile%\AppData\Roaming\WinRAR"
XCOPY /S /Y "WinRAR" "%UserProfile%\AppData\Roaming\WinRAR"
RMDIR /S /Q "WinRAR"

DEL "%SystemDrive%\Users\Default\Desktop\Instructions-Readme.txt"
DEL "%SystemDrive%\Users\Default\Desktop\Join us.txt"

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

sc.exe config BDESVC start= Disabled
sc.exe config CscService start= Disabled
sc.exe config dmwappushservice start= Disabled
sc.exe config Fax start= Disabled
sc.exe config FrameServer start= Disabled
sc.exe config HvHost start= Disabled
sc.exe config lfsvc start= Disabled
sc.exe config lmhosts start= Disabled
sc.exe config MSiSCSI start= Disabled
sc.exe config PcaSvc start= Disabled
sc.exe config PeerDistSvc start= Disabled
sc.exe config PhoneSvc start= Disabled
sc.exe config RpcLocator start= Disabled
sc.exe config SCardSvr start= Disabled
sc.exe config ScDeviceEnum start= Disabled
sc.exe config SCPolicySvc start= Disabled
sc.exe config SEMgrSvc start= Disabled
sc.exe config SensorDataService start= Disabled
sc.exe config SensorService start= Disabled
sc.exe config SensrSvc start= Disabled
sc.exe config SharedAccess start= Disabled
sc.exe config SmsRouter start= Disabled
sc.exe config SNMPTRAP start= Disabled
sc.exe config TabletInputService start= Disabled
sc.exe config TrkWks start= Disabled
sc.exe config vmicguestinterface start= Disabled
sc.exe config vmicheartbeat start= Disabled
sc.exe config vmickvpexchange start= Disabled
sc.exe config vmicrdv start= Disabled
sc.exe config vmicshutdown start= Disabled
sc.exe config vmictimesync start= Disabled
sc.exe config vmicvmsession start= Disabled
sc.exe config vmicvss start= Disabled
sc.exe config WinRM start= Disabled
sc.exe config XboxGipSvc start= Disabled

net stop BDESVC /y
net stop CscService /y
net stop dmwappushservice /y
net stop Fax /y
net stop FrameServer /y
net stop HvHost /y
net stop lfsvc /y
net stop lmhosts /y
net stop MSiSCSI /y
net stop PcaSvc /y
net stop PeerDistSvc /y
net stop PhoneSvc /y
net stop RpcLocator /y
net stop SCardSvr /y
net stop ScDeviceEnum /y
net stop SCPolicySvc /y
net stop SEMgrSvc /y
net stop SensorDataService /y
net stop SensorService /y
net stop SensrSvc /y
net stop SharedAccess /y
net stop SmsRouter /y
net stop SNMPTRAP /y
net stop TabletInputService /y
net stop TrkWks /y
net stop vmicguestinterface /y
net stop vmicheartbeat /y
net stop vmickvpexchange /y
net stop vmicrdv /y
net stop vmicshutdown /y
net stop vmictimesync /y
net stop vmicvmsession /y
net stop vmicvss /y
net stop WinRM /y
net stop XboxGipSvc /y

IF NOT EXIST "HWActivation.cmd" (
	ECHO OPERATIONS SUCCEED > "%UserProfile%\Desktop\SUCCESS.txt"
)

DEL %0
