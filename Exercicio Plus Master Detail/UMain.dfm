object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 415
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 648
    Top = 40
    Width = 75
    Height = 25
    Caption = 'See'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = -6
    Top = 0
    Width = 320
    Height = 120
    DataSource = dsRS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 320
    Top = 0
    Width = 320
    Height = 120
    DataSource = dsCNPJ
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object fdConnection: TFDConnection
    Params.Strings = (
      'Database=DbKairos_Aprovi'
      'User_Name=sa'
      'Password=admserver01'
      'Address=127.0.0.1'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 128
  end
  object fdQueryRS: TFDQuery
    Connection = fdConnection
    Left = 128
    Top = 128
  end
  object dsRS: TDataSource
    DataSet = fdQueryRS
    OnDataChange = dsRSDataChange
    Left = 216
    Top = 128
  end
  object fdQueryCNPJ: TFDQuery
    Connection = fdConnection
    Left = 416
    Top = 128
  end
  object dsCNPJ: TDataSource
    DataSet = fdQueryCNPJ
    Left = 504
    Top = 128
  end
end
