#define   Name       "Proxy Management"
#define   Version    "2.0.1"
#define   Publisher  "N0rmalUser"
#define   URL        "https://github.com/N0rmalUser/proxy-management"
#define   ExeName    "Setup.exe"
#define   DefaultDirName  "C:\"
;------------------------------------------------------------------------------
;   Параметры установки
;------------------------------------------------------------------------------
[Setup]
AppId={{31110CDE-82E1-42AE-9C1C-685D44A395AD}

; Прочая информация, отображаемая при установке
AppName={#name}
AppVersion={#Version}
AppPublisher={#Publisher}
AppPublisherURL={#URL}
AppSupportURL={#URL}
AppUpdatesURL={#URL}

; Путь установки по-умолчанию
DefaultDirName={pf}\{#Name}
; Имя группы в меню "Пуск"
DefaultGroupName={#Name}

; Каталог, куда будет записан собранный setup и имя исполняемого файла
OutputDir=C:\Users\normal\Desktop\setuper
OutputBaseFileName=setup

; Файл иконки
SetupIconFile=C:\Users\normal\Desktop\setuper\logo.ico

; Параметры сжатия
Compression=lzma
SolidCompression=yes
;------------------------------------------------------------------------------
;   Устанавливаем языки для процесса установки
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "C:\Users\normal\Desktop\setuper\LICIENCE"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "C:\Users\normal\Desktop\setuper\LICIENCE"
;------------------------------------------------------------------------------
;   Файлы, которые надо включить в пакет установщика
;------------------------------------------------------------------------------
[Files]
; Исполняемый файл
Source: "C:\Users\normal\Desktop\setuper\proxy.exe"; DestDir: "{app}"; Flags: ignoreversion
; Иконки
Source: "C:\Users\normal\Desktop\setuper\Off.ico"; DestDir: "C:\ProgramData\ProxyManagement"; Flags: ignoreversion 
Source: "C:\Users\normal\Desktop\setuper\On.ico"; DestDir: "C:\ProgramData\ProxyManagement"; Flags: ignoreversion
; Файл скриипта для автозапуска
Source: "C:\Users\normal\Desktop\setuper\proxy_autorun.exe"; DestDir: "C:\ProgramData\ProxyManagement"; Flags: ignoreversion
;------------------------------------------------------------------------------
;   Устанавливаем нужные зависимости в реестре
;------------------------------------------------------------------------------
[Registry]                                                      
; Создание пункта в контекстном меню
Root: HKCR; Subkey: "Directory\Background\shell\proxy\command"; ValueType: string;ValueData: "{app}\proxy.exe"; Flags: uninsdeletekey
; Делаем автозапуск
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "ProxyManagement"; ValueData: "C:\ProgramData\ProxyManagement\proxy_autorun.exe"
