object frm_xz_fyyf: Tfrm_xz_fyyf
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #21457#33647#33647#25151#36873#25321
  ClientHeight = 185
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object grp1: TGroupBox
    Left = 56
    Top = 8
    Width = 305
    Height = 138
    Caption = #33647#25151
    TabOrder = 0
    object dblkcbb_yf: TDBLookupComboBox
      Left = 32
      Top = 48
      Width = 241
      Height = 23
      ImeName = #20013#25991'('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
      KeyField = 'dm'
      ListField = 'mc'
      ListSource = ds_yf
      TabOrder = 0
    end
  end
  object btn_ok: TBitBtn
    Left = 88
    Top = 152
    Width = 75
    Height = 25
    Caption = #30830#23450
    Default = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ModalResult = 1
    ParentFont = False
    TabOrder = 1
    NumGlyphs = 2
  end
  object btn_tc: TBitBtn
    Left = 237
    Top = 152
    Width = 75
    Height = 25
    Cancel = True
    Caption = #21462#28040
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #23435#20307
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 2
    NumGlyphs = 2
  end
  object qry_yf: TADOQuery
    Connection = DM_data.ado_mydata
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'kssx'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'yfdm'
        Attributes = [paSigned]
        DataType = ftString
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from sys_ksdm where kssx like :kssx  and charindex(dm, ' +
        ':yfdm)>0')
    Left = 24
    Top = 96
  end
  object ds_yf: TDataSource
    DataSet = qry_yf
    Left = 24
    Top = 136
  end
end
