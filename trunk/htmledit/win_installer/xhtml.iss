; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=XHTML Edit
AppVerName=XHTML Edit 3.0
AppPublisher=PPK-Webprogramm
AppPublisherURL=http://ciz.ch/
AppSupportURL=http://ciz.ch/
AppUpdatesURL=http://ciz.ch/
DefaultDirName={pf}\XHTML Edit
DefaultGroupName=XHTML Edit
LicenseFile=D:\_INSTALLER\copying.txt
OutputDir=D:\_INSTALLER\bin
OutputBaseFilename=xhtml_installer
SetupIconFile=D:\_INSTALLER\zzz.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "D:\_INSTALLER\edithtml.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\linguist.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\copying.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\iconv.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\mingwm10.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\libmysql.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\QtNetwork4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\ticket.pdf"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\QtSql4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\QtXml4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\QtAssistantClient4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\QtAssistantClientd4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\_INSTALLER\locale\*"; DestDir: "{app}/locale/"; Flags: ignoreversion recursesubdirs createallsubdirs


; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\XHTML Edit"; Filename: "{app}\edithtml.exe"
Name: "{group}\Translate locale dir file language.ts"; Filename: "{app}\linguist.exe"
Name: "{group}\Bug Ticket"; Filename: "{app}\ticket.pdf"
Name: "{group}\{cm:ProgramOnTheWeb,XHTML Edit}"; Filename: "http://ciz.ch/"
Name: "{group}\{cm:UninstallProgram,XHTML Edit}"; Filename: "{uninstallexe}"


Name: "{commondesktop}\XHTML Edit"; Filename: "{app}\edithtml.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\XHTML Edit"; Filename: "{app}\edithtml.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\edithtml.exe"; Description: "{cm:LaunchProgram,XHTML Edit}"; Flags: nowait postinstall skipifsilent
