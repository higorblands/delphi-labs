unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  classe.person, classe.client, classe.saler, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    btSave: TButton;
    edtName: TEdit;
    edtAge: TEdit;
    btShow: TButton;
    PageControl1: TPageControl;
    TabClient: TTabSheet;
    TabSaler: TTabSheet;
    edtPaymentDay: TEdit;
    edtAdress: TEdit;
    edtCommission: TEdit;
    edtType: TEdit;
    ListBox1: TListBox;
    procedure btSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btSaveClick(Sender: TObject);
var
  ObjClient: TClient;
  ObjSaler: TSaler;

begin
  ObjClient := TClient.Create;
  try
    ObjClient.Name := edtName.Text;
    ObjClient.Age := StrToInt(edtAge.Text);
    ObjClient.dayPayment := StrToInt(edtPaymentDay.Text);
    ObjClient.Adress := edtAdress.Text;
    ObjClient.save;
    ShowMessage('Cliente ' + edtName.Text + ' cadastrado com sucesso !');
    edtName.Clear;
    edtAge.Clear;
    edtPaymentDay.Clear;
    edtAdress.Clear;
  finally
    ObjClient.Free;
  end;
  ObjSaler := TSaler.Create;
  try
    ObjSaler.Name := edtName.Text;
    ObjSaler.Age := StrToInt(edtAge.Text);
    ObjSaler.Percentage := StrToFloat(edtCommission.Text);
    ObjSaler.TypeSaler := edtType.Text;
    ObjSaler.save;
    ShowMessage('Vendedor ' + edtName.Text + ' cadastrado com sucesso !');
    edtName.Clear;
    edtAge.Clear;
    edtCommission.Clear;
    edtType.Clear;
  finally

  end;

end;

end.
