object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 201
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Ligar o banco'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 104
    Top = 137
    Width = 240
    Height = 25
    DataSource = dsAluno
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 786
    Height = 120
    Align = alTop
    DataSource = dsAluno
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=dbAlunos'
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 456
    Top = 120
  end
  object fdQueryAlunos: TFDQuery
    Connection = FDConnection1
    Left = 504
    Top = 120
  end
  object dsAluno: TDataSource
    DataSet = fdQueryAlunos
    Left = 552
    Top = 120
  end
end