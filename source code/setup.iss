; ��� ����������
#define   Name       "Proxy Manager"
; ������ ����������
#define   Version    "0.0.1"
; �����-�����������
#define   Publisher  "N0rmalUser"
; ���� ����� ������������
#define   URL        "https://github.com/N0rmalUser/py-proxy-manager"
; ��� ������������ ������
#define   ExeName    "Setup.exe"
; ���� � �������������� �����
#define   DefaultDirName  "C:\"
;------------------------------------------------------------------------------
;   ��������� ���������
;------------------------------------------------------------------------------
[Setup]

; ���������� ������������� ����������, 
;��������������� ����� Tools -> Generate GUID
AppId={{EA4FD78B-C139-4190-9C4F-448C4ECBF7B9}

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
OutputDir=C:\Users\normal\Desktop\setuper\test
OutputBaseFileName=test-setup

; ���� ������
SetupIconFile=C:\Users\normal\Desktop\setuper\ba.ico

; ��������� ������
Compression=lzma
SolidCompression=yes
;------------------------------------------------------------------------------
;   ������������� ����� ��� �������� ���������
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"
;------------------------------------------------------------------------------
;   �����, ������� ���� �������� � ����� �����������
;------------------------------------------------------------------------------
[Files]

; ����������� ����
Source: "C:\Users\normal\Desktop\setuper\proxy.exe"; DestDir: "{app}"; Flags: ignoreversion
; ������
Source: "C:\Users\normal\Desktop\setuper\ba.ico"; DestDir: "{app}"; Flags: ignoreversion
;------------------------------------------------------------------------------
;   ������������� ������ ����������� � �������
;------------------------------------------------------------------------------
[Registry]
; �������� ������ � ����������� ���� �� ������� �����
Root: HKCR; Subkey: "Directory\Background\shell\������\command"; ValueType: string;ValueData: "{app}\proxy.exe"; Flags: uninsdeletekey
; ������ ������
Root: HKCR; Subkey: "Directory\Background\shell\������"; ValueType: string; ValueName: "Icon";ValueData: "{app}\ba.ico"; Flags: uninsdeletekey
