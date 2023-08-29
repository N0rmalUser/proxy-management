#define   Name       "Proxy Management"
#define   Version    "2.0.1"
#define   Publisher  "N0rmalUser"
#define   URL        "https://github.com/N0rmalUser/proxy-management"
#define   ExeName    "Setup.exe"
#define   DefaultDirName  "C:\"
;------------------------------------------------------------------------------
;   ��������� ���������
;------------------------------------------------------------------------------
[Setup]
AppId={{31110CDE-82E1-42AE-9C1C-685D44A395AD}

; ������ ����������, ������������ ��� ���������
AppName={#name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; ���� ��������� ��-���������
DefaultDirName={pf}\{#Name}
; ��� ������ � ���� "����"
DefaultGroupName={#Name}

; �������, ���� ����� ������� ��������� setup � ��� ������������ �����
OutputDir=C:\Users\normal\Desktop\setuper
OutputBaseFileName=setup

; ���� ������
SetupIconFile=C:\Users\normal\Desktop\setuper\logo.ico

; ��������� ������
Compression=lzma
SolidCompression=yes
;------------------------------------------------------------------------------
;   ������������� ����� ��� �������� ���������
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "C:\Users\normal\Desktop\setuper\LICIENCE"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "C:\Users\normal\Desktop\setuper\LICIENCE"
;------------------------------------------------------------------------------
;   �����, ������� ���� �������� � ����� �����������
;------------------------------------------------------------------------------
[Files]
; ����������� ����
Source: "C:\Users\normal\Desktop\setuper\proxy.exe"; DestDir: "{app}"; Flags: ignoreversion
; ������
Source: "C:\Users\normal\Desktop\setuper\Off.ico"; DestDir: "C:\ProgramData\ProxyManagement"; Flags: ignoreversion 
Source: "C:\Users\normal\Desktop\setuper\On.ico"; DestDir: "C:\ProgramData\ProxyManagement"; Flags: ignoreversion
; ���� �������� ��� �����������
Source: "C:\Users\normal\Desktop\setuper\proxy_autorun.exe"; DestDir: "C:\ProgramData\ProxyManagement"; Flags: ignoreversion
;------------------------------------------------------------------------------
;   ������������� ������ ����������� � �������
;------------------------------------------------------------------------------
[Registry]                                                      
; �������� ������ � ����������� ����
Root: HKCR; Subkey: "Directory\Background\shell\proxy\command"; ValueType: string;ValueData: "{app}\proxy.exe"; Flags: uninsdeletekey
; ������ ����������
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "ProxyManagement"; ValueData: "C:\ProgramData\ProxyManagement\proxy_autorun.exe"
