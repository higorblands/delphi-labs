object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 412
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btSave: TButton
    Left = 112
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 0
    OnClick = btSaveClick
  end
  object edtName: TEdit
    Left = 26
    Top = 93
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Nome'
  end
  object edtAge: TEdit
    Left = 186
    Top = 93
    Width = 125
    Height = 21
    TabOrder = 2
    TextHint = 'Idade'
  end
  object btShow: TButton
    Left = 496
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 3
  end
  object PageControl1: TPageControl
    Left = 26
    Top = 136
    Width = 289
    Height = 193
    ActivePage = TabSaler
    TabOrder = 4
    object TabClient: TTabSheet
      Caption = 'Cliente'
      object edtPaymentDay: TEdit
        Left = 72
        Top = 53
        Width = 121
        Height = 21
        TabOrder = 0
        TextHint = 'Dia de vencimento'
      end
      object edtAdress: TEdit
        Left = 72
        Top = 88
        Width = 121
        Height = 21
        TabOrder = 1
        TextHint = 'Endere'#231'o'
      end
    end
    object TabSaler: TTabSheet
      Caption = 'Vendedor'
      ImageIndex = 1
      ExplicitLeft = 0
      object edtType: TEdit
        Left = 72
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 0
        TextHint = 'Tipo de Vendedor'
      end
      object edtCommission: TEdit
        Left = 72
        Top = 56
        Width = 121
        Height = 21
        TabOrder = 1
        TextHint = 'Comiss'#227'o'
      end
    end
  end
  object ListBox1: TListBox
    Left = 376
    Top = 160
    Width = 265
    Height = 169
    ItemHeight = 13
    TabOrder = 5
  end
end
