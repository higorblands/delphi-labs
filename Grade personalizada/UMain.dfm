object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 213
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 696
    Height = 137
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 312
    Top = 143
    Width = 75
    Height = 25
    Caption = 'See'
    TabOrder = 1
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=DbKairos_Aprovi'
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 168
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select CodigoProduto,Descricao,AlteracaoDataHora from Produto')
    Left = 192
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 256
    Top = 168
  end
end
