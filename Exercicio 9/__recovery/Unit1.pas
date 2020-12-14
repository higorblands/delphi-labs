unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    function validar(a: string): boolean;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  arquivo: TextFile;
  nameFile,line: string;

begin
if (validar(Edit1.Text) = false) then
 begin
    ShowMessage('Você deixou o campo em branco, não é possível seguir.');
  end
  else
  begin
   nameFile :=Edit1.Text+'.txt';
    AssignFile(arquivo, nameFile);
     Reset(arquivo);
    while not Eof(arquivo) do
        begin
          Readln(arquivo, line);
          ListBox1.Items.Add(line);
        end;
        closeFile(arquivo);
  end;

end;

function TForm1.validar(a: string): boolean;
begin
result := true;
 if (a = '') then
  begin
    result := false;
  end;
end;

end.
