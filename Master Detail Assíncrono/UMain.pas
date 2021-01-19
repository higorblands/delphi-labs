unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Vcl.StdCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids;

type
  TFMain = class(TForm)
    fdConnection: TFDConnection;
    fdQueryRS: TFDQuery;
    Button1: TButton;
    dsRS: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    fdQueryCNPJ: TFDQuery;
    dsCNPJ: TDataSource;
    FDMemTableCNPJ: TFDMemTable;
    FDMemTableRS: TFDMemTable;
    procedure Button1Click(Sender: TObject);
    procedure dsRSDataChange(Sender: TObject; Field: TField);
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
  fdQueryRS.SQL.Clear;
  fdQueryCNPJ.SQL.Clear;
  fdQueryRS.SQL.Add('Select * from LoteProduto');
  fdQueryCNPJ.SQL.Add('Select top 100 * from Produto');
  fdQueryCNPJ.Open;
  fdQueryRS.Open;
  FDMemTableRS.CopyDataSet(fdQueryRS, [coStructure, coAppend, coRestart]);
  FDMemTableCNPJ.CopyDataSet(fdQueryCNPJ, [coStructure, coAppend, coRestart]);
  fdQueryRS.Close;
  fdQueryCNPJ.Close;
end;

procedure TFMain.dsRSDataChange(Sender: TObject; Field: TField);
begin
  FDMemTableCNPJ.Filtered := False;
  FDMemTableCNPJ.Filter := 'codigoproduto = ' + (FDMemTableRS.FieldByName('CodigoProduto').AsString);
  FDMemTableCNPJ.Filtered := True;
end;

end.
