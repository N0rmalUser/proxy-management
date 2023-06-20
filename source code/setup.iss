; Имя приложения
#define   Name       "Proxy Manager"
; Версия приложения
#define   Version    "0.0.1"
; Фирма-разработчик
#define   Publisher  "N0rmalUser"
; Сайт фирмы разработчика
#define   URL        "https://github.com/N0rmalUser/py-proxy-manager"
; Имя исполняемого модуля
#define   ExeName    "Setup.exe"
; Путь к установленному файлу
#define   DefaultDirName  "C:\"
;------------------------------------------------------------------------------
;   Параметры установки
;------------------------------------------------------------------------------
[Setup]

; Уникальный идентификатор приложения, 
;сгенерированный через Tools -> Generate GUID
AppId={{EA4FD78B-C139-4190-9C4F-448C4ECBF7B9}

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
OutputDir=C:\Users\normal\Desktop\setuper\test
OutputBaseFileName=test-setup

; Файл иконки
SetupIconFile=C:\Users\normal\Desktop\setuper\ba.ico

; Параметры сжатия
Compression=lzma
SolidCompression=yes
;------------------------------------------------------------------------------
;   Устанавливаем языки для процесса установки
;------------------------------------------------------------------------------
[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License_ENG.txt"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"; LicenseFile: "License_RUS.txt"
;------------------------------------------------------------------------------
;   Файлы, которые надо включить в пакет установщика
;------------------------------------------------------------------------------
[Files]

; Исполняемый файл
Source: "C:\Users\normal\Desktop\setuper\proxy.exe"; DestDir: "{app}"; Flags: ignoreversion
; Иконка
Source: "C:\Users\normal\Desktop\setuper\ba.ico"; DestDir: "{app}"; Flags: ignoreversion
;------------------------------------------------------------------------------
;   Устанавливаем нужные зависимости в реестре
;------------------------------------------------------------------------------
[Registry]
; Создание пункта в контекстном меню на рабочем столе
Root: HKCR; Subkey: "Directory\Background\shell\Прокси\command"; ValueType: string;ValueData: "{app}\proxy.exe"; Flags: uninsdeletekey
; Делаем иконку
Root: HKCR; Subkey: "Directory\Background\shell\Прокси"; ValueType: string; ValueName: "Icon";ValueData: "{app}\ba.ico"; Flags: uninsdeletekey
