object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 29
    Width = 112
    Height = 13
    Caption = 'Cadastro na TStringList'
  end
  object edtProductName: TEdit
    Left = 56
    Top = 48
    Width = 137
    Height = 21
    Alignment = taCenter
    TabOrder = 0
    TextHint = 'Digite nome do produto'
  end
  object btnSave: TButton
    Left = 80
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object edtProductCode: TEdit
    Left = 56
    Top = 79
    Width = 137
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    TextHint = 'Digite o c'#243'digo do produto'
  end
  object Button1: TButton
    Left = 240
    Top = 106
    Width = 197
    Height = 25
    Caption = 'Click para saber a posi'#231#227'o do produto'
    TabOrder = 4
    OnClick = Button1Click
  end
  object edtcodsearch: TEdit
    Left = 272
    Top = 79
    Width = 145
    Height = 21
    TabOrder = 3
    TextHint = 'Digite c'#243'digo do produto'
  end
  object ComboBox131: TComboBox13
    Left = 272
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 5
    TextHint = 'Produtos'
  end
end
