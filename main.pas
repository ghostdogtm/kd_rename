unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, XPMan;

type
  TMainForm = class(TForm)
    EditName: TEdit;
    RenameBtn: TButton;
    EditReName: TEdit;
    Image1: TImage;
    Image2: TImage;
    xpmnfst1: TXPManifest;
    Save: TButton;
    procedure RenameBtnClick(Sender: TObject);
    procedure EditNameChange(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  MainForm: TMainForm;
  f: TextFile;
  comma: AnsiChar = 'В';
implementation

{$R *.dfm}

procedure TMainForm.RenameBtnClick(Sender: TObject);
var
  i: Shortint;
  name: string[17];
  re_name: string[18];
begin
  name:=EditName.Text;
  if length(name)>0 then
    begin
      for i:=1 to length(name) do
        case name[i] of
          'A':name[i]:='`';
          'B':name[i]:='a';
          'C':name[i]:='b';
          'D':name[i]:='c';
          'E':name[i]:='d';
          'F':name[i]:='e';
          'G':name[i]:='f';
          'H':name[i]:='g';
          'I':name[i]:='h';
          'J':name[i]:='i';
          'K':name[i]:='j';
          'L':name[i]:='k';
          'M':name[i]:='l';
          'N':name[i]:='m';
          'O':name[i]:='n';
          'P':name[i]:='o';
          'Q':name[i]:='p';
          'R':name[i]:='q';
          'S':name[i]:='r';
          'T':name[i]:='s';
          'U':name[i]:='t';
          'V':name[i]:='u';
          'W':name[i]:='v';
          'X':name[i]:='w';
          'Y':name[i]:='x';
          'Z':name[i]:='y';
          'a':name[i]:='Б';
          'b':name[i]:='В';
          'c':name[i]:='Г';
          'd':name[i]:='Д';
          'e':name[i]:='Е';
          'f':name[i]:='Ж';
          'g':name[i]:='З';
          'h':name[i]:='И';
          'i':name[i]:='Й';
          'j':name[i]:='К';
          'k':name[i]:='Л';
          'l':name[i]:='М';
          'm':name[i]:='Н';
          'n':name[i]:='О';
          'o':name[i]:='П';
          'p':name[i]:='Р';
          'q':name[i]:='С';
          'r':name[i]:='Т';
          's':name[i]:='У';
          't':name[i]:='Ф';
          'u':name[i]:='Х';
          'v':name[i]:='Ц';
          'w':name[i]:='Ч';
          'x':name[i]:='?';
          'y':name[i]:='Щ';
          'z':name[i]:='Ъ';
          '0':name[i]:='O';
          '1':name[i]:='P';
          '2':name[i]:='Q';
          '3':name[i]:='R';
          '4':name[i]:='S';
          '5':name[i]:='T';
          '6':name[i]:='U';
          '7':name[i]:='V';
          '8':name[i]:='W';
          '9':name[i]:='X';
        else
          if name[i]<>' ' then
            name[i]:='!';
        end;

      re_name:='';
      for i:=1 to length(name) do
        if name[i]<>'!' then
          begin
            if name[i]<>' ' then
              re_name:=re_name+comma+name[i]
            else if name[i]=' ' then
              re_name:=re_name + 'Б' + 'Ц';
          end;
    EditReName.Text:=re_name + comma;
    end;
end;

procedure TMainForm.EditNameChange(Sender: TObject);
begin
  EditReName.Text:='';
end;

procedure TMainForm.SaveClick(Sender: TObject);
begin
  AssignFile(f, 'result.txt');
  if FileExists('result.txt') then
    begin
      Append(f);
      writeln(f, EditName.Text + ' - ' + EditReName.Text);
      CloseFile(f);
      MessageDlg('ƒанные записаны в файл ', mtInformation,[mbOk],0);
    end
  else
    begin
      Rewrite(f);
      writeln(f, EditName.Text + ' - ' + EditReName.Text);
      CloseFile(f);
      MessageDlg('ƒанные записаны в файл ', mtInformation,[mbOk],0);
    end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  MainForm.Position:=poScreenCenter;
end;

end.


