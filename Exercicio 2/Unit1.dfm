object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TxT to ASCII'
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
    Left = 120
    Top = 32
    Width = 186
    Height = 13
    Alignment = taCenter
    Caption = 'Programa para converter TxT to ASCII'
  end
  object edtInput: TEdit
    Left = 8
    Top = 72
    Width = 193
    Height = 21
    TabOrder = 0
    TextHint = 'Digite um texto para converter'
  end
  object edtOutput: TEdit
    Left = 232
    Top = 72
    Width = 193
    Height = 21
    TabOrder = 1
    TextHint = 'Texto convertido'
  end
  object btConverter: TButton
    Left = 176
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
    OnClick = btConverterClick
  end
end
