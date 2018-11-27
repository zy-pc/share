inherited frm_treeview_ctxz: Tfrm_treeview_ctxz
  BorderStyle = bsDialog
  Caption = #35789#26465#36873#25321
  ClientHeight = 553
  ClientWidth = 674
  OnShow = FormShow
  ExplicitWidth = 680
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 674
    ExplicitWidth = 674
    object cxLabel1: TcxLabel
      Left = 8
      Top = 13
      Caption = #24403#21069#35789#26465':'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -15
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxlab_text: TcxLabel
      Left = 82
      Top = 13
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -15
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object Edit1: TEdit
      Left = 80
      Top = 9
      Width = 537
      Height = 23
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 620
      Top = 7
      Width = 49
      Height = 25
      Caption = #36873#25321
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  inherited Panel2: TPanel
    Width = 674
    Height = 512
    ExplicitWidth = 674
    ExplicitHeight = 512
    inherited Splitter1: TSplitter
      Left = 297
      Height = 510
      ExplicitLeft = 297
      ExplicitHeight = 510
    end
    inherited Panel3: TPanel
      Width = 296
      Height = 510
      ExplicitWidth = 296
      ExplicitHeight = 510
      inherited cxTreeView1: TcxTreeView
        Width = 294
        Height = 489
        OnChange = cxTreeView1Change
        ExplicitWidth = 294
        ExplicitHeight = 487
      end
      object cxLabel2: TcxLabel
        Left = 1
        Top = 490
        Align = alBottom
        Caption = #25552#31034':'#21452#20987#25110#36755#20837#22238#36710#38190#36873#25321#35789#26465'!'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -15
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
    object ListBox_ct_list: TListBox
      Left = 302
      Top = 1
      Width = 371
      Height = 510
      Align = alClient
      ItemHeight = 15
      TabOrder = 1
      OnClick = ListBox_ct_listClick
      OnDblClick = ListBox_ct_listDblClick
    end
  end
  inherited qry_tree: TADOQuery
    Left = 88
    Top = 208
  end
  inherited ImageList1: TImageList
    Left = 56
    Top = 208
  end
end
