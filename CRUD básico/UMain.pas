unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Win.ADODB, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btONBD: TButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnList: TButton;
    btnInsert: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    edtID: TEdit;
    ID: TLabel;
    Nome: TLabel;
    edtNome: TEdit;
    edtTurno: TEdit;
    Label1: TLabel;
    edtIDCurso: TEdit;
    label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    edtPeriodo: TEdit;
    Per�odo: TLabel;
    FDQuery2: TFDQuery;
    btnConfirmDelete: TButton;
    procedure btONBDClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure inserte;
    procedure list;
    procedure del;
    procedure btnDeleteClick(Sender: TObject);
    procedure btnConfirmDeleteClick(Sender: TObject);
  private
    { Private declarations }
    aux : string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btONBDClick(Sender: TObject);
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

procedure TForm1.del;

begin
 aux := FDQuery1.fieldbyname('ID').asString;
  FDQuery2.Close;
  FDQuery2.SQL.Clear;
  FDQuery2.SQL.add('select * from AlunosCadastro');
  FDQuery2.Open;
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.add('delete from AlunosCadastro where id = ' + aux + '');
  FDQuery1.ExecSQL;
  FDQuery2.Refresh;
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.add('select * from AlunosCadastro');
  FDQuery1.Open;
  ShowMessage('Aluno de c�digo ' + aux + ' deletado com sucesso.');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FDConnection1.Close;
end;

procedure TForm1.inserte;
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.add
    ('insert into AlunosCadastro (ID,NOME,IDCURSO,TURNO,PERIODO,DATANASCIMENTO,DATAINGRESSOFACULDADE)');
  FDQuery1.SQL.add('values(''' + edtID.Text + ''',''' + edtNome.Text + ''',''' +
    edtIDCurso.Text + ''',''' + edtTurno.Text + ''',''' + edtPeriodo.Text +
    ''',''' + DateToStr(DateTimePicker1.Date) + ''',''' +
    DateToStr(DateTimePicker2.Date) + ''')');
  { FDQuery1.SQL.add
    ('insert into AlunosCadastro (ID,NOME,IDCURSO,TURNO,PERIODO,DATANASCIMENTO,DATAINGRESSOFACULDADE)');
    FDQuery1.SQL.add('values (6,''Higor'',5,''Manh�'',1,''01/12/1996'',''10/10/2020'')'); }
  FDQuery1.ExecSQL;
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.add('select * from AlunosCadastro');
  FDQuery1.Open;
end;

procedure TForm1.list;
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.add('select * from AlunosCadastro');
  FDQuery1.Open;

end;

procedure TForm1.btnConfirmDeleteClick(Sender: TObject);
begin
  del;
end;

procedure TForm1.btnDeleteClick(Sender: TObject);
begin
  if FDConnection1.Connected then
  begin
    btnConfirmDelete.Visible := True;
  end
  else
  begin
    ShowMessage('Voc� deve ligar o banco primeiro antes de listar.');
  end;

end;

procedure TForm1.btnInsertClick(Sender: TObject);
begin
  if FDConnection1.Connected then
  begin
    with FDQuery1.SQL do
      inserte;
  end
  else
  begin
    ShowMessage('Voc� deve ligar o banco primeiro antes de listar.');
  end;

end;

procedure TForm1.btnListClick(Sender: TObject);
begin
  if FDConnection1.Connected then
  begin
    list;
  end
  else
  begin
    ShowMessage('Voc� deve ligar o banco primeiro antes de listar.');
  end;

end;

end.
