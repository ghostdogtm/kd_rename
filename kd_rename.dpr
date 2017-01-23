program kd_rename;

uses
  Forms,
  main in 'main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'KD Rename';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
