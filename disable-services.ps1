$services = @(
    "AJRouter"
    "ALG"
    "CscService"                                    # Offline Files
    "diagnosticshub.standardcollector.service"      # Microsoft (R) Diagnostics Hub Standard Collector Service
    "DiagTrack"                                     # Diagnostics Tracking Service
    "dmwappushservice"                              # WAP Push Message Routing Service (see known issues)
    "FrameServer"
    "HomeGroupListener"                             # HomeGroup Listener
    "HomeGroupProvider"                             # HomeGroup Provider
#    "HvHost"                                        # Needed by sandbox
    "icssvc"                                        # mobile hotspot
    "irmon"                                         # Infrared monitor service
    "lfsvc"                                         # Geolocation Service
    "MapsBroker"                                    # Downloaded Maps Manager
    "NaturalAuthentication"
    "BranchCache"
    "NcdAutoSetup"                                  # Network Connected Devices Auto-Setup
    "Netlogon"
    "NetTcpPortSharing"                             # Net.Tcp Port Sharing Service
    "NfsClnt"
    "PeerDistSvc"
    "PhoneSvc"                                      # phone
    "RemoteAccess"                                  # Routing and Remote Access
    "RemoteRegistry"                                # Remote Registry
    "RetailDemo"
    "RpcLocator"
    "ScDeviceEnum"                                  # smartcard
    "SCPolicySvc"                                   # smartcard
    "SEMgrSvc"                                      # Payments and NFC/SE Manager
#    "SharedAccess"                                  # Internet Connection Sharing (ICS) - needed by sandbox
    "SmsRouter"
    "SNMPTRAP"
    "TrkWks"                                        # Distributed Link Tracking Client
    "WbioSrvc"                                      # Windows Biometric Service
    "wcncsvc"                                       # Windows Connect Now - Config Registrar
    "WinRM"
    "wisvc"                                         # insider
    "WMPNetworkSvc"                                 # Windows Media Player Network Sharing Service
    "WpcMonSvc"                                     # Parental Controls
    "WwanSvc"
    "XblAuthManager"                                # Xbox Live Auth Manager
    "XblGameSave"                                   # Xbox Live Game Save Service
    "XboxGipSvc"
    "XboxNetApiSvc"                                 # Xbox Live Networking Service
    #"WlanSvc"                                      # WLAN AutoConfig
    #"wscsvc"                                       # Windows Security Center Service
    #"WSearch"                                      # Windows Search
    # new
    "iphlpsvc"
    "IpxlatCfgSvc"
    "SessionEnv"
    "TermService"
    "UmRdpService"
    "SCardSvr"
    "TabletInputService"
    "WebClient"
    "WFDSConMgrSvc"
)

foreach ($service in $services) {
    Write-Output "Trying to disable $service"
    Get-Service -Name $service | Set-Service -StartupType Disabled
}
