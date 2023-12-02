object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 144
    Top = 80
    Width = 67
    Height = 13
    Caption = 'Silahkan Login'
  end
  object lbl2: TLabel
    Left = 144
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object lbl3: TLabel
    Left = 152
    Top = 184
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object edt1: TEdit
    Left = 224
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 232
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 208
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btn1Click
  end
  object con: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan_tiket_bioskop'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\Asus\Documents\visual3\tugasakhir\libmysql (1).dll'
    Left = 80
    Top = 232
  end
  object zqry: TZQuery
    Connection = con
    SQL.Strings = (
      'select * from tbl_login')
    Params = <>
    Left = 72
    Top = 144
  end
  object ds: TDataSource
    DataSet = zqry
    Left = 64
    Top = 64
  end
end
