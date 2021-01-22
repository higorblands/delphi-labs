unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef;

type
  TFMain = class(TForm)
    FDConnection1: TFDConnection;
    fdQueryAlunos: TFDQuery;
    dsAluno: TDataSource;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.Button1Click(Sender: TObject);
begin
  FDConnection1.Open;
  if FDConnection1.Connected then
  begin
    ShowMessage('Banco ligado com sucesso.');
  end
  else
  begin
    ShowMessage('Erro ao ligar o banco.');
  end;
end;

procedure TFMain.Button2Click(Sender: TObject);
begin
  if FDConnection1.Connected then
  begin
    fdQueryAlunos.SQL.ADD('select alunoscadastro.id, alunoscadastro.nome,cursoscadastro.idcurso,CursosCadastro.curso, alunoscadastro.turno, alunoscadastro.periodo, alunoscadastro.datanascimento, alunoscadastro.dataingressofaculdade');
    fdQueryAlunos.SQL.ADD('from [AlunosCadastro]');
    fdQueryAlunos.SQL.ADD('inner join [CursosCadastro] on alunoscadastro.idcurso = CursosCadastro.idcurso');
    fdQueryAlunos.Open;
  end
  else
  begin
    ShowMessage('Voc� deve ligar o banco primeiro.');
  end;
end;

procedure TFMain.FormDestroy(Sender: TObject);
begin
  FDConnection1.Close;
end;

end.
