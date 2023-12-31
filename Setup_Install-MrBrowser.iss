; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Mr browser"
#define MyAppVersion "1.7"
#define MyAppPublisher "None"
#define MyAppExeName "MrBrowser.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F214015F-27FD-4BEE-9DD6-7D82CA3722B3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\Mr browser - (Files)
DefaultGroupName={#MyAppName}
OutputBaseFilename=Instal-lSetup_MrBrowser
SetupIconFile=C:\Users\Thiago\Desktop\Mr browser\application\Mrbrowser.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "default"; MessagesFile: "compiler:Default.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Thiago\Desktop\Mr browser\application\MrBrowser.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Thiago\Desktop\Mr browser\application\Mrbrowser.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Thiago\Desktop\Mr browser\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

