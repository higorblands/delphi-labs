object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 427
  ClientWidth = 651
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
    Left = 277
    Top = 296
    Width = 75
    Height = 25
    Caption = 'See'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = -6
    Top = 0
    Width = 648
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
    Left = 8
    Top = 144
    Width = 634
    Height = 146
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
    Top = 360
  end
  object fdQueryRS: TFDQuery
    Connection = fdConnection
    Left = 136
    Top = 360
  end
  object dsRS: TDataSource
    DataSet = FDMemTableRS
    OnDataChange = dsRSDataChange
    Left = 224
    Top = 360
  end
  object fdQueryCNPJ: TFDQuery
    Connection = fdConnection
    Left = 440
    Top = 352
  end
  object dsCNPJ: TDataSource
    DataSet = FDMemTableCNPJ
    Left = 528
    Top = 352
  end
  object FDMemTableCNPJ: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 440
    Top = 312
  end
  object FDMemTableRS: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 136
    Top = 320
  end
end
