inherited frm_treeview_srmbxz: Tfrm_treeview_srmbxz
  BorderStyle = bsDialog
  Caption = #36755#20837#27169#26495#36873#25321
  ClientHeight = 434
  ClientWidth = 636
  Position = poDesigned
  ExplicitWidth = 642
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 636
    Height = 32
    ExplicitWidth = 636
    ExplicitHeight = 32
    object cxb_use: TcxButton
      Left = 321
      Top = 4
      Width = 105
      Height = 25
      Caption = #20351#29992#27169#26495
      Enabled = False
      TabOrder = 0
      OnClick = cxb_useClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object cxB_exit: TcxButton
      Left = 522
      Top = 4
      Width = 95
      Height = 25
      Caption = #36864'    '#20986
      TabOrder = 1
      OnClick = cxB_exitClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  inherited Panel2: TPanel
    Top = 32
    Width = 636
    Height = 402
    ExplicitTop = 32
    ExplicitWidth = 636
    ExplicitHeight = 402
    inherited Splitter1: TSplitter
      Left = 257
      Height = 400
      ExplicitLeft = 257
      ExplicitHeight = 400
    end
    inherited Panel3: TPanel
      Width = 256
      Height = 400
      ExplicitWidth = 256
      ExplicitHeight = 400
      inherited cxTreeView1: TcxTreeView
        Width = 254
        Height = 398
        OnChange = cxTreeView1Change
        ExplicitWidth = 254
        ExplicitHeight = 398
      end
    end
    object Panel4: TPanel
      Left = 262
      Top = 1
      Width = 373
      Height = 400
      Align = alClient
      TabOrder = 1
      object cxDBMemo1: TcxDBMemo
        Left = 1
        Top = 1
        Align = alClient
        DataBinding.DataField = 'dynr'
        DataBinding.DataSource = ds_mbnr
        TabOrder = 0
        Height = 398
        Width = 371
      end
    end
  end
  inherited qry_tree: TADOQuery
    Left = 72
    Top = 192
  end
  inherited ImageList1: TImageList
    Left = 40
    Top = 192
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1000303030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007F7F0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0000000000000000000090900060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF00000000000000000000000000009090000090
      9000009090000090900000909000009090000090900000909000009090000090
      9000009090000090900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007F7F00CFFFFF0090CF
      FF007F7F7F00000000000000000000007F0000007F0000007F0000007F0090CF
      FF0090CFFF0090CFFF0060CFCF00000000000000000000909000CFFFFF0090CF
      FF0090FFFF0090CFFF0090FFFF0090CFFF0090FFFF0090CFFF0090FFFF0090CF
      FF0090CFFF0090CFFF0060CFCF0000000000000000000000000000909000F0F0
      F00090CFFF0090FFFF0090CFFF0090FFFF0090CFFF0090CFFF0090CFFF0090CF
      FF0060CFCF000090900000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007F7F00CFFFFF0090FF
      FF007F7F7F00FF9F00000000000090FFFF0090CFFF0090FFFF0000007F0090FF
      FF0090CFFF0090CFFF0060CFCF00000000000000000000909000CFFFFF0090FF
      FF0090FFFF0090FFFF0090CFFF0090FFFF0090CFFF0090FFFF0090CFFF0090FF
      FF0090CFFF0090CFFF0060CFCF00000000000000000000909000F0F0F00090FF
      FF0090FFFF0090CFFF0090FFFF0090CFFF0090FFFF0090CFFF0090CFFF0090CF
      FF0060CFCF000000000000909000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007F7F00CFFFFF0090FF
      FF007F7F7F007F7F7F007F7F7F0090FFFF0090FFFF0000000000000000000000
      000090FFFF0090CFFF0060CFCF000000000000000000209E9E00CFFFFF0090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090CFFF0090FFFF0090CF
      FF0090FFFF0090CFFF0060CFCF00000000000000000000909000F0F0F00090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090CFFF0090FFFF0090CFFF0090CF
      FF00009090000000000000909000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00007F7F00CFFFFF0090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF00007F7F0060CFCF0060CFCF00007F
      7F000000000090FFFF0060CFCF0000000000000000003CAAAA00CFFFFF0090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090CFFF0090FFFF0090CFFF0090FF
      FF0090CFFF0090FFFF0060CFCF000000000000909000F0F0F00090FFFF0090FF
      FF0090FFFF0090FFFF0090CFFF0090FFFF0090FFFF0090CFFF0090FFFF0060CF
      CF000000000060CFCF0060CFCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007F7F00CFFFFF0090FF
      FF007F7F7F00000000000000000090FFFF00007F7F0000000000007F7F0060CF
      CF000000000090CFFF0060CFCF00000000000000000058B6B600CFFFFF0090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090CF
      FF0090FFFF0090CFFF0060CFCF000000000000909000F0F0F00090FFFF0090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090CFFF0090FFFF0090CFFF0060CF
      CF000000000060CFCF0060CFCF00000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C60000000000000000000000
      00000000000000000000000000000000000000000000007F7F00CFFFFF0090FF
      FF007F7F7F00FF9F00000000000000007F0000007F00007F7F003FFFFF003FFF
      FF00007F7F0090FFFF0060CFCF00000000000000000000909000CFFFFF0090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090CFFF0090FF
      FF0090CFFF0090FFFF0060CFCF00000000000090900000909000009090000090
      9000009090000090900000909000009090000090900000909000009090000090
      900060CFCF0090FFFF0060CFCF0000000000000000000000000000000000C6C6
      C600000000000000000000000000C6C6C60000000000C6C6C600000000000000
      00000000000000000000840000008400000000000000007F7F00CFFFFF0090FF
      FF007F7F7F007F7F7F007F7F7F0090FFFF0090FFFF00007F7F00007F7F00007F
      7F0090FFFF0090CFFF0060CFCF00000000000000000000909000CFFFFF0090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FF
      FF0090FFFF0090CFFF0060CFCF00000000000000000000909000F0F0F00090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FF
      FF0090FFFF0090FFFF0060CFCF00000000000000000000000000000000000000
      0000C6C6C60000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6
      C600C6C6C60000000000840000008400000000000000007F7F00CFFFFF00CFFF
      FF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFF
      FF00CFFFFF0090FFFF0060CFCF00000000000000000000909000CFFFFF00CFFF
      FF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFF
      FF00CFFFFF0090FFFF0060CFCF00000000000000000000909000F0F0F00090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF0090FFFF00F0F0F000F0F0
      F000F0F0F000F0F0F00060CFCF00000000000000000000000000000000000000
      000000000000C6C6C60000000000C6C6C60000000000C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600840000008400000000000000007F7F0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF00007F7F00007F7F00007F
      7F00007F7F00007F7F00007F7F0000000000000000000090900060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0000909000009090000090
      9000009090000090900000909000000000000000000000909000F0F0F00090FF
      FF0090FFFF0090FFFF0090FFFF0090FFFF00F0F0F00000909000009090000090
      9000009090000090900000909000000000000000000000000000000000000000
      00000000000000000000C6C6C60000000000C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C60084000000840000000000000000000000007F7F00EFEF
      EF00CFFFFF00CFFFFF0090FFFF0090FFFF00007F7F0000000000000000000000
      000000000000000000000000000000000000000000000000000000909000EFEF
      EF00CFFFFF00CFFFFF0090FFFF0090FFFF000090900000000000000000000000
      000000000000000000000000000000000000000000000000000000909000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F0000090900000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600000000008400000084000000000000000000000000000000007F
      7F00007F7F00007F7F00007F7F00007F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000090
      9000009090000090900000909000009090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000090
      9000009090000090900000909000009090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF000F
      C000C000E0007FEF80008000C000482F80008000C0007FEF800080008000482F
      8000800080007FEF0000800000007F6F8040800000004E2F8000800000004404
      80008000800060008000800080000000800180018001F800C07FC03FC07FFC00
      E0FFE07FE0FFFE04FFFFFFFFFFFFFFFF}
  end
  object qry_srmb: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'mbdm'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'select id,mbmc from zybl_srmb_lbmx where mbdm=:mbdm and sybz=0')
    Left = 128
    Top = 192
    object qry_srmbid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_srmbmbmc: TStringField
      FieldName = 'mbmc'
      Size = 30
    end
  end
  object qry_srmbnr: TADOQuery
    Connection = DM_data.ado_mydata
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'select dynr from zybl_srmb_lbmx where id=:id')
    Left = 168
    Top = 192
  end
  object ds_mbnr: TDataSource
    DataSet = qry_srmbnr
    Left = 208
    Top = 192
  end
end
