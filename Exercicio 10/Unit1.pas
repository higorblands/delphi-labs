unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    age: TEdit;
    weight: TEdit;
    Idade: TLabel;
    Peso: TLabel;
    Button1: TButton;
    fileName: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
    function select(funcFile: string): string;
    procedure filter(line: string);

  var
    matriz: array of array of string;
    temp: array of string;
    mLine, mColumn, h, b: integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  userFile: TextFile;
  s: char;
  i, value: integer;
begin
  mLine := 0;
  mColumn := 0;
  value := 0;
  select(fileName.Text);
  for i := 0 to (mLine - 1) do
  begin
    ListBox1.Items.Add(matriz[i, 0]);
  end;
end;

procedure TForm1.filter(line: string);
var
  size, i, c, clear: integer;
  linetemp, linefinal: string;
begin
  h := 0;
  clear := 0;
  linetemp := '';
  linefinal := '';
  size := Length(line);
  for i := 1 to size do
  begin
    SetLength(matriz, mLine + 1);
    linetemp := linetemp + line[i];
    if (Length(linetemp) = 100) then
    begin
      linefinal := trim(linetemp);
      SetLength(matriz[mLine], h + 1);
      SetLength(temp, h + 1);
      temp[h] := linefinal;
      linefinal := '';
      h := h + 1;
    end;

    if (Length(linetemp) = 103) then
    begin
      for c := 101 to 103 do
      begin
        linefinal := linefinal + linetemp[c];
      end;
      clear := StrToInt(linefinal);
      linefinal := IntToStr(clear);
      SetLength(matriz[mLine], h + 1);
      SetLength(temp, h + 1);
      temp[h] := linefinal;
      linefinal := '';
      h := h + 1;
    end;

    if (Length(linetemp) = 108) then
    begin
      for c := 104 to 108 do
      begin
        linefinal := linefinal + linetemp[c];
      end;
      clear := StrToInt(linefinal);
      linefinal := IntToStr(clear);
      SetLength(matriz[mLine], h + 1);
      SetLength(temp, h + 1);
      temp[h] := linefinal;
      linefinal := '';
      h := h + 1;
    end;

    b := h;
  end;

  for c := 0 to b - 1 do
  begin
    matriz[mLine, c] := temp[c];
  end;
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var
  s: string;
  i: integer;
begin
  i := ListBox1.itemindex;
  age.Text := matriz[i, 1];
  weight.Text := matriz[i, 2];
end;

function TForm1.select(funcFile: string): string;
var
  userFile: TextFile;
  s: string;
begin
  assignFile(userFile, funcFile);
  reset(userFile);
  while NOT EOF(userFile) do
  begin
    readLn(userFile, s);
    filter(s);
    mLine := mLine + 1;
  end;

  closefile(userFile);
end;

end.
