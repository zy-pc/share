unit p_jyxmwrite_zy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, DBGridEh, ComCtrls, ExtCtrls, ImgList, GridsEh, StdCtrls,
  CheckLst, cxControls, cxContainer, cxCheckListBox, Buttons, cxEdit, cxLabel,cxCheckBox,
  DBGridEhGrouping;
const
  zp = '22222';
  zpjx = 5;
  begin_char = '_';
type
  Tfrm_jyxmwrite_zy = class( TForm )
    ad_sfxm: TADODataSet;
    ad_sfdl: TADODataSet;
    ds_sfxm: TDataSource;
    ImageList1: TImageList;
    ad_cyjc: TADODataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    sfxmtreeview: TTreeView;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    TreeView2: TTreeView;
    cxLabel1: TcxLabel;
    ProgressBar1: TProgressBar;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    Panel8: TPanel;
    DBGridEh2: TDBGridEh;
    ds_cx_xmdm: TDataSource;
    qry_cx_xmdm: TADOQuery;
    clb: TCheckListBox;
    ts_wswxmsrfs: TTabSheet;
    tv_wswxm: TTreeView;
    clb_wswxm: TCheckListBox;
    pnl1_wswxm: TPanel;
    pnl2_wswxm: TPanel;
    pnl3_wswxm: TPanel;
    DBGridEh_wswxm: TDBGridEh;
    ad_swswxm: TADODataSet;
    TabSheetInputMode3: TTabSheet;
    pnl1: TPanel;
    sfxmOrdertreeview: TTreeView;
    pnl2: TPanel;
    ad_yzxmpx: TADODataSet;
    DS_ypxmpx: TDataSource;
    chklst_yzxmpx: TCheckListBox;
    procedure sfxmtreeviewChange( Sender: TObject; Node: TTreeNode );
    procedure DBGridEh1DblClick( Sender: TObject );
    procedure DBGridEh1KeyPress( Sender: TObject; var Key: Char );
    procedure BitBtn1Click( Sender: TObject );
    procedure TreeView2Change( Sender: TObject; Node: TTreeNode );
    procedure FormActivate( Sender: TObject );
    procedure FormShow(Sender: TObject);
    procedure clbClickCheck(Sender: TObject);
    procedure clbDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure tv_wswxmChange(Sender: TObject; Node: TTreeNode);
    procedure clb_wswxmDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure clb_wswxmClickCheck(Sender: TObject);
    procedure sfxmOrdertreeviewChange(Sender: TObject; Node: TTreeNode);
    procedure DBGridEh3DblClick(Sender: TObject);
    procedure DBGridEh3KeyPress(Sender: TObject; var Key: Char);
    procedure chklst_yzxmpxClickCheck(Sender: TObject);
    procedure chklst_yzxmpxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
   procedure xmmxinyz;
  public
    { Public declarations }
    pub_key: string;
    dldm: string;
    yzsx, xmmc, pr_yzlb, tmh, zyh, dymk, yzlb: string;

    procedure xminyz;

  end;

var
  frm_jyxmwrite_zy: Tfrm_jyxmwrite_zy;
  xsebh:string;
  xzdm:string;
  i: integer;
  _xseBz: boolean;
  yzqf :string;    //����������ҽ������ͨҽ��     1Ϊ��ͨҽ����2Ϊ������ҽ��

function TreeFindItem( Sender: TTreeView; Name: string; parent_n: integer ): TTreeNode;
function Treeleavelleng( zpkeyleng: integer ): integer;

//-------------------calmhawk---------------
procedure pro_xseyz_load( _yzlb: string );
procedure pro_ptyz_load( _yzlb: string );

implementation

{$R *.DFM}
uses p_dm, p_func, p_yzinput_xse,p_yzinput;

function Treeleavelleng( zpkeyleng: integer ): integer;
var
  i, levellength: integer;
begin
  levellength := 0;
  for i := 1 to zpjx do
  begin
    levellength := levellength + strtoint( copy( zp, i, 1 ) );
    if levellength = zpkeyleng then
    begin
      levellength := levellength - strtoint( copy( zp, i, 1 ) );
      break;
    end;
  end;
  result := levellength;
end;

function TreeFindItem( Sender: TTreeView; Name: string; parent_n: integer ): TTreeNode;
var
  Nodeitem: TTreeNode;
begin
  NodeItem := Sender.items.getfirstnode;
  if parent_n > 0 then
  begin
    repeat
      if copy( trim( NodeItem.text ), 1, parent_n ) <> Name then
      begin
        NodeItem := NodeItem.getnext;
      end;
    until copy( trim( NodeItem.text ), 1, parent_n ) = Name;
  end;
  if parent_n = 0 then
  begin
    result := sender.Items.GetFirstNode;
  end
  else
  begin
    Result := NodeItem;
  end
end;

procedure Tfrm_jyxmwrite_zy.FormActivate( Sender: TObject );
var
  dlmc, fydm, fymc: string;
begin
  ad_cyjc.close;
  if yzqf='1' then     //��ͨҽ��
  begin
    if  (frm_yzinput.sp_jbxx.fieldbyname('xzfysfbz').AsBoolean = True) then
    begin
      if yzlb = '����' then
      ad_cyjc.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
      ' sys_yzxm b , sys_fysfxm c where a.dm= b.dldm  and b.xsbz=1  and b.fydm=c.fydm and b.dldm  like ' + #39 + '0101%' + #39 + ' and b.zybz=1 order by b.dldm,b.xsxh,b.xmmc'

      else
      if yzlb = '���' then
      ad_cyjc.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
      ' sys_yzxm b , sys_fysfxm c where a.dm=b.dldm  and b.xsbz=1  and b.fydm=c.fydm  and b.dldm  like ' + #39 + '0102%' + #39 + ' and b.zybz=1 order by b.dldm,b.sx,b.xmmc'
      else
      if yzlb = '����' then
      ad_cyjc.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
      ' sys_yzxm b , sys_fysfxm c where a.dm=b.dldm  and b.fydm=c.fydm  and  (a.dm like ' + #39 + '010301%' + #39 +
      ')  and b.zybz=1 order by b.dldm,b.sx,b.xmmc';


    end else
    begin
       if yzlb = '����' then

      ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
        ' sys_yzxm b where dm=dldm  and xsbz=1 and dldm  like ' + #39 + '0101%' + #39 + ' and zybz=1 order by dldm,xsxh,xmmc'
    else
      if yzlb = '���' then
        ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm  and xsbz=1 and dldm  like ' + #39 + '0102%' + #39 + ' and zybz=1 order by dldm,sx,xmmc'
      else
        if yzlb = '����' then
          ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm  and  (dm like ' + #39 + '010301%' + #39 +
            ')  and zybz=1 order by dldm,sx,xmmc';


    end;
  end else
  if yzqf='2' then    //������ҽ��
  begin
    if  (frm_yzinput_xse.sp_jbxx.fieldbyname('xzfysfbz').AsBoolean = True) then
    begin
      if yzlb = '����' then
      ad_cyjc.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
      ' sys_yzxm b , sys_fysfxm c where a.dm= b.dldm  and b.xsbz=1  and b.fydm=c.fydm and b.dldm  like ' + #39 + '0101%' + #39 + ' and b.zybz=1 order by b.dldm,b.xsxh,b.xmmc'

      else
      if yzlb = '���' then
      ad_cyjc.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
      ' sys_yzxm b , sys_fysfxm c where a.dm=b.dldm  and b.xsbz=1  and b.fydm=c.fydm  and b.dldm  like ' + #39 + '0102%' + #39 + ' and b.zybz=1 order by b.dldm,b.sx,b.xmmc'
      else
      if yzlb = '����' then
      ad_cyjc.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
      ' sys_yzxm b , sys_fysfxm c where a.dm=b.dldm  and b.fydm=c.fydm  and  (a.dm like ' + #39 + '010301%' + #39 +
      ')  and b.zybz=1 order by b.dldm,b.sx,b.xmmc';


    end else
    begin
       if yzlb = '����' then

      ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
        ' sys_yzxm b where dm=dldm  and xsbz=1 and dldm  like ' + #39 + '0101%' + #39 + ' and zybz=1 order by dldm,xsxh,xmmc'
    else
      if yzlb = '���' then
        ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm  and xsbz=1 and dldm  like ' + #39 + '0102%' + #39 + ' and zybz=1 order by dldm,sx,xmmc'
      else
        if yzlb = '����' then
          ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm  and  (dm like ' + #39 + '010301%' + #39 +
            ')  and zybz=1 order by dldm,sx,xmmc';


    end;
  end;
  


  ad_cyjc.Open;
  ad_cyjc.First;
  clb.Visible := false;
  clb.Items.Clear;
  if ad_cyjc.RecordCount > 400 then
    ProgressBar1.Max := 400
  else
    ProgressBar1.Max := ad_cyjc.RecordCount;
  ProgressBar1.Position := 0;

  i := 0;
  cxlabel1.top := progressbar1.Top + 1;
  cxlabel1.Left := progressbar1.Width div 2 - 61;

  while ( not ad_cyjc.Eof ) and ( i <= 400 ) do
  begin
    dlmc := ad_cyjc.FieldByName( 'mc' ).asstring;
    clb.Items.Add(dlmc);
    //clb.Items.Items[i].Enabled := false;
    i := i + 1;
    while ( dlmc = ad_cyjc.FieldByName( 'mc' ).asstring ) and ( not ad_cyjc.eof ) do
    begin
      fymc := ad_cyjc.FieldByName( 'xmmc' ).asstring;
      fydm := ad_cyjc.FieldByName( 'xmdm' ).asstring;
      clb.Items.Add(fydm + '_' + fymc);
      i := i + 1;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      cxLabel1.Caption := '����׼�������(' + formatfloat( '#0.00', ProgressBar1.Position / ProgressBar1.Max * 100 ) + '%)';
      cxLabel1.Refresh;
      ad_cyjc.Next;
    end;

  end;
  clb.Visible := true;
end;
procedure Tfrm_jyxmwrite_zy.FormShow(Sender: TObject);
begin
  xzdm:='';
  if pub_yydm<>'0003' then
  begin
    Panel3.Visible:=false;
    clb.Align:=alClient;
  end;
  
end;

//------calmhawk----2011-06-16---�ع�----

procedure pro_ptyz_load( _yzlb: string );
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
begin
  try
    yzqf :='1';   //��ͨҽ��    
    Application.CreateForm( Tfrm_jyxmwrite_zy, frm_jyxmwrite_zy );
    frm_jyxmwrite_zy.yzlb := _yzlb;
    _xseBz := false;
    with frm_jyxmwrite_zy do
    begin
      //�������ͽṹ
      yzsx := frm_yzinput.qry_yz.FieldByName( 'yzsx' ).asstring;
      pr_yzlb := frm_yzinput.qry_yz.FieldByName( 'lb' ).asstring;

      pub_key := '';
      sfxmtreeview.Items.Clear;
      Node := nil;
      if yzlb = '����' then
        with ad_sfdl do
        begin
          close;
          commandtext := 'select dm,mc from  sys_yzdl where dm like ' + #39 + '0101%' + #39 + '  order by dm';
          open;
        end
      else
        if yzlb = '���' then
          with ad_sfdl do
          begin
            close;
            commandtext := 'select dm,mc from  sys_yzdl where dm like ' + #39 + '0102%' + #39 + '  order by dm';
            open;
          end
        else
          if yzlb = '����' then
            with ad_sfdl do
            begin
              close;
              commandtext := 'select dm,mc from  sys_yzdl where (dm like ' + #39 + '0103%' + #39 +
                ' or dm like ' + #39 + '0104%' + #39 +
                ' or dm like ' + #39 + '0107%' + #39 + ')  order by dm';
              open;
            end;

      if ad_sfdl.RecordCount = 0 then
      begin
        abort;
      end;
      ad_sfdl.first;
      ZPKEY := trim( ad_sfdl['dm'] );
      N := LENGTH( ZPKEY );
      while not ad_sfdl.Eof do
      begin
        ZPKEY := trim( ad_sfdl['dm'] );
        ZPTEXT := trim( ad_sfdl['mc'] );
        if LENGTH( ZPKEY ) = N then
        begin
          Node := sfxmTREEVIEW.items.Add( Node, ZPkey + '_' + zptext )
        end
        else
          if LENGTH( ZPKEY ) > N then
          begin
            Node := sfxmTREEVIEW.items.AddChild( Node, ZPkey + '_' + zptext );
          end
          else
          begin
            parent_n := Treeleavelleng( length( zpkey ) );
            node := TreeFindItem( sfxmtreeview, copy( zpkey, 1, parent_n ), parent_n );
            if parent_n <> 0 then
            begin
              node := sfxmTREEVIEW.ITEMS.ADDchild( node, ZPkey + '_' + zptext );
            end
            else
            begin
              Node := sfxmTREEVIEW.items.Add( Node, ZPkey + '_' + zptext )
            end;
          end;
        N := LENGTH( ZPKEY );
        ad_sfdl.Next;
        if node <> nil then node.ImageIndex := 1;
      end;
      ad_sfdl.First;
      // --�����ڶ�����
      treeview2.Items.Clear;
      Node := nil;

      ad_sfdl.first;
      ZPKEY := trim( ad_sfdl['dm'] );
      N := LENGTH( ZPKEY );
      while not ad_sfdl.Eof do
      begin
        ZPKEY := trim( ad_sfdl['dm'] );
        ZPTEXT := trim( ad_sfdl['mc'] );
        if LENGTH( ZPKEY ) = N then
        begin
          Node := treeview2.items.Add( Node, ZPkey + '_' + zptext )
        end
        else
          if LENGTH( ZPKEY ) > N then
          begin
            Node := treeview2.items.AddChild( Node, ZPkey + '_' + zptext );
          end
          else
          begin
            parent_n := Treeleavelleng( length( zpkey ) );
            node := TreeFindItem( treeview2, copy( zpkey, 1, parent_n ), parent_n );
            if parent_n <> 0 then
            begin
              node := treeview2.ITEMS.ADDchild( node, ZPkey + '_' + zptext );
            end
            else
            begin
              Node := treeview2.items.Add( Node, ZPkey + '_' + zptext )
            end;
          end;
        N := LENGTH( ZPKEY );
        ad_sfdl.Next;
        if node <> nil then node.ImageIndex := 1;
      end;
      ad_sfdl.First;
      treeview2.TopItem.Expand( false );
      ad_sfdl.First;

      //20150325����
      //����΢������Ŀ���룺
      tv_wswxm.Items.Clear;
      Node := nil;
      ad_swswxm.Close;
      ad_swswxm.Open ;
      if ad_swswxm.RecordCount>0 then
      begin
        ad_swswxm.first;
        while not ad_swswxm.Eof do
        begin
          ZPTEXT := trim( ad_swswxm['ybmc'] );
          Node := tv_wswxm.items.Add( Node,zptext ) ;
          ad_swswxm.Next;
        end;
        ad_swswxm.First;
        tv_wswxm.TopItem.Expand( True );
        ad_swswxm.First;
      end;
      //������ʽ��
      ad_sfdl.first;
      ZPKEY := trim( ad_sfdl['dm'] );
      N := LENGTH( ZPKEY );
      while not ad_sfdl.Eof do
      begin
        ZPKEY := trim( ad_sfdl['dm'] );
        ZPTEXT := trim( ad_sfdl['mc'] );
        if LENGTH( ZPKEY ) = N then
        begin
          Node := sfxmOrdertreeview.items.Add( Node, ZPkey + '_' + zptext )
        end
        else
          if LENGTH( ZPKEY ) > N then
          begin
            Node := sfxmOrdertreeview.items.AddChild( Node, ZPkey + '_' + zptext );
          end
          else
          begin
            parent_n := Treeleavelleng( length( zpkey ) );
            node := TreeFindItem( sfxmOrdertreeview, copy( zpkey, 1, parent_n ), parent_n );
            if parent_n <> 0 then
            begin
              node := sfxmOrdertreeview.ITEMS.ADDchild( node, ZPkey + '_' + zptext );
            end
            else
            begin
              Node := sfxmOrdertreeview.items.Add( Node, ZPkey + '_' + zptext )
            end;
          end;
        N := LENGTH( ZPKEY );
        ad_sfdl.Next;
        if node <> nil then node.ImageIndex := 1;
      end;
      //����ѡ��ϵͳ

      pagecontrol1.ActivePageIndex := 1;

    end;
    frm_jyxmwrite_zy.ShowModal;
  finally
    frm_jyxmwrite_zy.Free;
  end;
end;

//------calmhawk----2011-06-16---���ӣ�������ҽ��¼��----

procedure pro_xseyz_load( _yzlb: string );
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
begin
  try
    yzqf :='2';   //������ҽ��    
    Application.CreateForm( Tfrm_jyxmwrite_zy, frm_jyxmwrite_zy );
    frm_jyxmwrite_zy.yzlb := _yzlb;
    _xseBz := true;

    with frm_jyxmwrite_zy do
    begin
      //�������ͽṹ
      yzsx := frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).asstring;
      pr_yzlb := frm_yzinput_xse.qry_yz.FieldByName( 'lb' ).asstring;

      pub_key := '';
      sfxmtreeview.Items.Clear;
      Node := nil;
      if yzlb = '����' then
        with ad_sfdl do
        begin
          close;
          commandtext := 'select dm,mc from  sys_yzdl where dm like ' + #39 + '0101%' + #39 + '  order by dm';
          open;
        end
      else
        if yzlb = '���' then
          with ad_sfdl do
          begin
            close;
            commandtext := 'select dm,mc from  sys_yzdl where dm like ' + #39 + '0102%' + #39 + '  order by dm';
            open;
          end
        else
          if yzlb = '����' then
            with ad_sfdl do
            begin
              close;
              commandtext := 'select dm,mc from  sys_yzdl where (dm like ' + #39 + '0103%' + #39 +
                ' or dm like ' + #39 + '0104%' + #39 +
                ' or dm like ' + #39 + '0107%' + #39 + ')  order by dm';
              open;
            end;

      if ad_sfdl.RecordCount = 0 then
      begin
        abort;
      end;
      ad_sfdl.first;
      ZPKEY := trim( ad_sfdl['dm'] );
      N := LENGTH( ZPKEY );
      while not ad_sfdl.Eof do
      begin
        ZPKEY := trim( ad_sfdl['dm'] );
        ZPTEXT := trim( ad_sfdl['mc'] );
        if LENGTH( ZPKEY ) = N then
        begin
          Node := sfxmTREEVIEW.items.Add( Node, ZPkey + '_' + zptext )
        end
        else
          if LENGTH( ZPKEY ) > N then
          begin
            Node := sfxmTREEVIEW.items.AddChild( Node, ZPkey + '_' + zptext );
          end
          else
          begin
            parent_n := Treeleavelleng( length( zpkey ) );
            node := TreeFindItem( sfxmtreeview, copy( zpkey, 1, parent_n ), parent_n );
            if parent_n <> 0 then
            begin
              node := sfxmTREEVIEW.ITEMS.ADDchild( node, ZPkey + '_' + zptext );
            end
            else
            begin
              Node := sfxmTREEVIEW.items.Add( Node, ZPkey + '_' + zptext )
            end;
          end;
        N := LENGTH( ZPKEY );
        ad_sfdl.Next;
        if node <> nil then node.ImageIndex := 1;
      end;
      ad_sfdl.First;
      // --�����ڶ�����
      treeview2.Items.Clear;
      Node := nil;

      ad_sfdl.first;
      ZPKEY := trim( ad_sfdl['dm'] );
      N := LENGTH( ZPKEY );
      while not ad_sfdl.Eof do
      begin
        ZPKEY := trim( ad_sfdl['dm'] );
        ZPTEXT := trim( ad_sfdl['mc'] );
        if LENGTH( ZPKEY ) = N then
        begin
          Node := treeview2.items.Add( Node, ZPkey + '_' + zptext )
        end
        else
          if LENGTH( ZPKEY ) > N then
          begin
            Node := treeview2.items.AddChild( Node, ZPkey + '_' + zptext );
          end
          else
          begin
            parent_n := Treeleavelleng( length( zpkey ) );
            node := TreeFindItem( treeview2, copy( zpkey, 1, parent_n ), parent_n );
            if parent_n <> 0 then
            begin
              node := treeview2.ITEMS.ADDchild( node, ZPkey + '_' + zptext );
            end
            else
            begin
              Node := treeview2.items.Add( Node, ZPkey + '_' + zptext )
            end;
          end;
        N := LENGTH( ZPKEY );
        ad_sfdl.Next;
        if node <> nil then node.ImageIndex := 1;
      end;
      ad_sfdl.First;
      treeview2.TopItem.Expand( false );
      ad_sfdl.First;

            //20150325����
      //����΢������Ŀ���룺
      tv_wswxm.Items.Clear;
      Node := nil;
      ad_swswxm.Close;
      ad_swswxm.Open ;
      if ad_swswxm.RecordCount>0 then
      begin
        ad_swswxm.first;
        while not ad_swswxm.Eof do
        begin
          ZPTEXT := trim( ad_swswxm['ybmc'] );
          Node := tv_wswxm.items.Add( Node,zptext ) ;
          ad_swswxm.Next;
        end;
        ad_swswxm.First;
        tv_wswxm.TopItem.Expand( True );
        ad_swswxm.First;
      end;

      //����ѡ��ϵͳ

      pagecontrol1.ActivePageIndex := 1;
    end;
    frm_jyxmwrite_zy.ShowModal;
  finally
    frm_jyxmwrite_zy.Free;
  end;
end;
//���뷽ʽ3������Ŀ����yangshuai
procedure Tfrm_jyxmwrite_zy.sfxmOrdertreeviewChange(Sender: TObject;
  Node: TTreeNode);
var
  dlmc, fydm, fymc: string;
  recn: integer;
begin
if sfxmOrdertreeview.selected <> nil then
  begin
    if sfxmOrdertreeview.selected.text <> '' then
    begin
      pub_key := trim( sfxmOrdertreeview.selected.text );
      pub_key := copy( pub_key, 1, pos( '_', pub_key ) - 1 );
      dldm := pub_key;
      pub_key := copy( pub_key, 1, 2 );
      ad_sfdl.Locate( 'dm', pub_key, [] );
      ad_yzxmpx.close;
     if pub_yydm = '0257' then
     begin
        if yzlb = '����' then
        ad_yzxmpx.CommandText := 'select dm,mc,b.pym,b.xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b, SYS_YZXMPX c where dm=dldm and b.xmdm  = c.xmdm and c.czydm = '+QuotedStr(pub_czydm)+' and  dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,c.pl desc,xmmc'

      else
        ad_yzxmpx.CommandText := 'select dm,mc,b.pym,b.xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b, SYS_YZXMPX c  where dm=dldm and b.xmdm  = c.xmdm  and xsbz=1 and c.czydm = '+QuotedStr(pub_czydm)+' and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,c.pl desc,xmmc';

     end else
     begin
        if (frm_yzinput.sp_jbxx.fieldbyname('xzfysfbz').AsBoolean = True) then
        begin
           if yzlb = '����' then
            ad_yzxmpx.CommandText := 'select a.dm,mc,b.pym,b.xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b, SYS_YZXMPX c ,sys_fysfxm d where a.dm=b.dldm and b.xmdm  = c.xmdm and b.fydm  = d.fydm and c.czydm ='+ QuotedStr(pub_czydm)+' and  b.dldm  like ' + #39 + dldm + '%' + #39 + ' order by b.dldm,c.pl desc,b.xmmc'

          else
            ad_yzxmpx.CommandText := 'select a.dm,mc,b.pym,b.xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b, SYS_YZXMPX c,sys_fysfxm d  where a.dm=b.dldm and b.xmdm  = c.xmdm and b.fydm  = d.fydm and b.xsbz=1 and c.czydm ='+ QuotedStr(pub_czydm) + ' and b.dldm  like ' + #39 + dldm + '%' + #39 + ' order by b.dldm,c.pl desc,b.xmmc';
        end else
        begin
          if yzlb = '����' then
            ad_yzxmpx.CommandText := 'select dm,mc,b.pym,b.xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b, SYS_YZXMPX c where dm=dldm and b.xmdm  = c.xmdm and c.czydm = '+QuotedStr(pub_czydm)+' and  dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,c.pl desc,xmmc'

          else
            ad_yzxmpx.CommandText := 'select dm,mc,b.pym,b.xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b, SYS_YZXMPX c  where dm=dldm and b.xmdm  = c.xmdm  and xsbz=1 and c.czydm = '+QuotedStr(pub_czydm)+' and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,c.pl desc,xmmc';

        end;
      end;
      ad_yzxmpx.open;

      //����ѡ��ϵͳ
      recn := ad_yzxmpx.RecordCount;
      ad_yzxmpx.first;
      chklst_yzxmpx.Visible := false;
      chklst_yzxmpx.Items.Clear;
      ProgressBar1.Max := ad_yzxmpx.RecordCount;
      ProgressBar1.Position := 0;

      i := 0;
      while ( not ad_yzxmpx.Eof ) and ( recn < 500 ) do
      begin
        dlmc := ad_yzxmpx.FieldByName( 'mc' ).asstring;
        chklst_yzxmpx.Visible := false;
        chklst_yzxmpx.Items.Add(dlmc);
  //      clb.Items.Items[i].Enabled := false;
        i := i + 1;
        while ( dlmc = ad_yzxmpx.FieldByName( 'mc' ).asstring ) and ( not ad_yzxmpx.eof ) do
        begin
          fymc := ad_yzxmpx.FieldByName( 'xmmc' ).asstring;
          fydm := ad_yzxmpx.FieldByName( 'xmdm' ).asstring;
          chklst_yzxmpx.Items.Add( fydm + '_' + fymc);
          if pub_yydm='0003' then
          begin
            if Pos(','+ ad_yzxmpx.FieldByName('xmdm').asstring+',',','+xzdm)>0 then
              chklst_yzxmpx.Checked[i]:=True
            else
              chklst_yzxmpx.Checked[i] := False;
          end;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          cxLabel1.Caption := '����׼�������(' + formatfloat( '#0.00', ProgressBar1.Position / ProgressBar1.Max * 100 ) + '%)';
          cxLabel1.Refresh;
          i := i + 1;
          ad_yzxmpx.Next;
        end;

      end;
      chklst_yzxmpx.Visible := true;

    end
    else
      pub_key := '';
  end;
end;


procedure Tfrm_jyxmwrite_zy.sfxmtreeviewChange( Sender: TObject;
  Node: TTreeNode );
begin
  if sfxmtreeview.selected <> nil then
  begin
    if sfxmtreeview.selected.text <> '' then
    begin
      pub_key := trim( sfxmtreeview.selected.text );
      pub_key := copy( pub_key, 1, pos( '_', pub_key ) - 1 );
      dldm := pub_key;
      pub_key := copy( pub_key, 1, 2 );
      ad_sfdl.Locate( 'dm', pub_key, [] );
      ad_sfxm.close;
      if pub_yydm = '0257' then
      begin
        if yzlb = '����' then
          ad_sfxm.CommandText := 'select dm,mc,b.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,sx,xmmc'

        else
          ad_sfxm.CommandText := 'select dm,mc,b.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm  and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';
      end
      else
      begin
        if  (frm_yzinput.sp_jbxx.fieldbyname('xzfysfbz').AsBoolean = True) then
        begin
         if yzlb = '����' then
          ad_sfxm.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b,sys_fysfxm c where a.dm=b.dldm and b.fydm =c.fydm and b.dldm  like ' + #39 + dldm + '%' + #39 + ' order by b.dldm,b.sx,b.xmmc'

        else
          ad_sfxm.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b,sys_fysfxm c where a.dm=b.dldm and b.fydm =c.fydm and b.xsbz=1 and b.dldm  like ' +
            #39 + dldm + '%' + #39 + ' order by b.dldm,b.xsxh,b.xmmc';

        end else
        begin
        if yzlb = '����' then
          ad_sfxm.CommandText := 'select dm,mc,b.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,sx,xmmc'

        else
          ad_sfxm.CommandText := 'select dm,mc,b.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm  and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';
        end;
      end;
      ad_sfxm.open;
    end
  end
  else
    pub_key := '';
end;


procedure Tfrm_jyxmwrite_zy.TreeView2Change( Sender: TObject; Node: TTreeNode );
var
  dlmc, fydm, fymc: string;
  recn: integer;
begin
  if treeview2.selected <> nil then
  begin
    if treeview2.selected.text <> '' then
    begin
      pub_key := trim( treeview2.selected.text );
      pub_key := copy( pub_key, 1, pos( '_', pub_key ) - 1 );
      dldm := pub_key;
      pub_key := copy( pub_key, 1, 2 );
      ad_sfdl.Locate( 'dm', pub_key, [] );
      if length( dldm ) >= 4 then
      begin
        ad_sfxm.close;
        if pub_yydm = '0257' then
        begin
           if yzlb = '����' then
          ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,sx,xmmc'

        else
          ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm and b.qybz=1 and zybz=1 and xsbz=1 and dldm  like ' +
            #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';

        end  else  if yzqf='1' then
        begin
          if   (frm_yzinput.sp_jbxx.fieldbyname('xzfysfbz').AsBoolean = True)then
          begin
              if yzlb = '����' then
            ad_sfxm.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b,sys_fysfxm c where a.dm=b.dldm and b.fydm =c.fydm and b.dldm  like ' + #39 + dldm + '%' + #39 + ' order by b.dldm,b.sx,b.xmmc'

          else
            ad_sfxm.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b,sys_fysfxm c where a.dm=b.dldm and b.fydm =c.fydm  and b.qybz=1 and b.zybz=1 and b.xsbz=1 and b.dldm  like ' +
              #39 + dldm + '%' + #39 + ' order by b.dldm,b.xsxh,b.xmmc';

          end else
          begin
             if yzlb = '����' then
            ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b where dm=dldm and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,sx,xmmc'

          else
            ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b where dm=dldm and b.qybz=1 and zybz=1 and xsbz=1 and dldm  like ' +
              #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';

          end;
        end
        else
        begin    //20171109
          if   (frm_yzinput_xse.sp_jbxx.fieldbyname('xzfysfbz').AsBoolean = True)then
          begin
            if yzlb = '����' then
              ad_sfxm.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b,sys_fysfxm c where a.dm=b.dldm and b.fydm =c.fydm and b.dldm  like ' + #39 + dldm + '%' + #39 + ' order by b.dldm,b.sx,b.xmmc'

            else
              ad_sfxm.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
                ' sys_yzxm b,sys_fysfxm c where a.dm=b.dldm and b.fydm =c.fydm  and b.qybz=1 and b.zybz=1 and b.xsbz=1 and b.dldm  like ' +
                #39 + dldm + '%' + #39 + ' order by b.dldm,b.xsxh,b.xmmc';

          end else
          begin
             if yzlb = '����' then
              ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
                ' sys_yzxm b where dm=dldm and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,sx,xmmc'

            else
              ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
                ' sys_yzxm b where dm=dldm and b.qybz=1 and zybz=1 and xsbz=1 and dldm  like ' +
                #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';

          end;
        end;

        ad_sfxm.open;
      end;
      //����ѡ��ϵͳ
      recn := ad_sfxm.RecordCount;
      ad_sfxm.first;
      clb.Visible := false;
      clb.Items.Clear;
      ProgressBar1.Max := ad_sfxm.RecordCount;
      ProgressBar1.Position := 0;

      i := 0;
      while ( not ad_sfxm.Eof ) and ( recn < 500 ) do
      begin
        dlmc := ad_sfxm.FieldByName( 'mc' ).asstring;
        clb.Visible := false;
        clb.Items.Add(dlmc);
  //      clb.Items.Items[i].Enabled := false;
        i := i + 1;
        while ( dlmc = ad_sfxm.FieldByName( 'mc' ).asstring ) and ( not ad_sfxm.eof ) do
        begin
          fymc := ad_sfxm.FieldByName( 'xmmc' ).asstring;
          fydm := ad_sfxm.FieldByName( 'xmdm' ).asstring;
          clb.Items.Add( fydm + '_' + fymc);
          if pub_yydm='0003' then
          begin
            if Pos(','+ ad_sfxm.FieldByName('xmdm').asstring+',',','+xzdm)>0 then
              clb.Checked[i]:=True
            else
              clb.Checked[i] := False;
          end;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          cxLabel1.Caption := '����׼�������(' + formatfloat( '#0.00', ProgressBar1.Position / ProgressBar1.Max * 100 ) + '%)';
          cxLabel1.Refresh;
          i := i + 1;
          ad_sfxm.Next;
        end;

      end;
      clb.Visible := true;

    end
    else
      pub_key := '';
  end;
end;

procedure Tfrm_jyxmwrite_zy.tv_wswxmChange(Sender: TObject; Node: TTreeNode);
var
  ybmc, fydm, fymc: string;
  recn: integer;
begin
  if tv_wswxm.selected <> nil then
  begin
    if tv_wswxm.selected.text <> '' then
    begin
      pub_key := trim( tv_wswxm.selected.text );
      ybmc := pub_key;
      ad_sfxm.close;
       if pub_yydm = '0257' then
      begin
         ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm and dldm like '+ #39+'01010504%'+#39
          +' and yb = ' + #39 +ybmc + #39 + ' order by dldm,sx,xmmc';
      end
      else
      begin
        if  (frm_yzinput.sp_jbxx.fieldbyname('xzfysfbz').AsBoolean = True) then
        begin
          ad_sfxm.CommandText := 'select a.dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b,sys_fysfxm c where a.dm=b.dldm and b.fydm =c.fydm and b.dldm like '+#39+'01010504%'+#39 +
          ' and b.yb  = ' + #39 + ybmc  + #39 + ' order by b.dldm,b.sx,b.xmmc'
        end else
        begin
           ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm and dldm like '+ #39+'01010504%'+#39
            +' and yb = ' + #39 +ybmc + #39 + ' order by dldm,sx,xmmc';
        end;
      end;
      ad_sfxm.open;
      //����ѡ��ϵͳ
      recn := ad_sfxm.RecordCount;
      ad_sfxm.first;
      clb_wswxm.Visible := false;
      clb_wswxm.Items.Clear;
      ProgressBar1.Max := ad_sfxm.RecordCount;
      ProgressBar1.Position := 0;

      i := 0;
      while ( not ad_sfxm.Eof ) and ( recn < 500 ) do
      begin
        ybmc := ad_sfxm.FieldByName( 'mc' ).asstring;
        clb_wswxm.Visible := false;
        clb_wswxm.Items.Add(ybmc);
        i := i + 1;
        while ( ybmc = ad_sfxm.FieldByName( 'mc' ).asstring ) and ( not ad_sfxm.eof ) do
        begin
          fymc := ad_sfxm.FieldByName( 'xmmc' ).asstring;
          fydm := ad_sfxm.FieldByName( 'xmdm' ).asstring;
          clb_wswxm.Items.Add( fydm + '_' + fymc);
          if pub_yydm='0003' then
          begin
            if Pos(','+ ad_sfxm.FieldByName('xmdm').asstring+',',','+xzdm)>0 then
              clb_wswxm.Checked[i]:=True
            else
              clb_wswxm.Checked[i] := False;
          end;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          cxLabel1.Caption := '����׼�������(' + formatfloat( '#0.00', ProgressBar1.Position / ProgressBar1.Max * 100 ) + '%)';
          cxLabel1.Refresh;
          i := i + 1;
          ad_sfxm.Next;
        end;

      end;
      clb_wswxm.Visible := true;

    end
    else
      pub_key := '';
  end;
end;

procedure Tfrm_jyxmwrite_zy.xminyz;
begin
  if _xseBz then
  begin
    frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString;
    frm_yzinput_xse.qry_yz.Edit;
    if trim( frm_yzinput_xse.tmh ) = '' then
    begin
      frm_yzinput_xse.tmh := frm_yzinput_xse.sp_jbxx.FieldByName( 'tmh' ).AsString;
    end;
    frm_yzinput_xse.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput_xse.tmh;
    frm_yzinput_xse.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput_xse.zyh;
    frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
    frm_yzinput_xse.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;

    if yzlb = '����' then
    begin
      frm_yzinput_xse.qry_yz.FieldByName( 'xmdm' ).AsString := '����';
      frm_yzinput_xse.qry_yz.FieldByName( 'xmmc' ).AsString := xmmc;
      frm_yzinput_xse.qry_yz.FieldByName( 'dw' ).AsString := '';
      frm_yzinput_xse.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
      frm_yzinput_xse.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
      frm_yzinput_xse.qry_yz.FieldByName( 'kdys' ).AsString := frm_yzinput_xse.sp_jbxx.FieldByName( 'zgys' ).AsString;
      frm_yzinput_xse.qry_yz.FieldByName( 'yplsj' ).AsFloat := 0;
      frm_yzinput_xse.qry_yz.FieldByName( 'sl' ).AsString := '1';
      frm_yzinput_xse.qry_yz.FieldByName( 'czks' ).value := pub_ksdm;
      frm_yzinput_xse.qry_yz.FieldByName( 'czys' ).value := xsebh;
      frm_yzinput_xse.qry_xmyz.insert;
      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmdm' ).AsString := '����';
      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmmc' ).AsString := xmmc;
      frm_yzinput_xse.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
      frm_yzinput_xse.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
      frm_yzinput_xse.qry_xmyz.post;
      frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString;
      frm_yzinput_xse.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput_xse.maxxh + 1;
      p_yzinput_xse.maxxh := p_yzinput_xse.maxxh + 1;
    end
    else
    begin
      frm_yzinput_xse.qry_yz.FieldByName( 'xmdm' ).AsString := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString;
      frm_yzinput_xse.qry_yz.FieldByName( 'xmmc' ).AsString := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'xmmc' ).AsString;
      frm_yzinput_xse.qry_yz.FieldByName( 'dw' ).AsString := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'dw' ).AsString;
      frm_yzinput_xse.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
      frm_yzinput_xse.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
      frm_yzinput_xse.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
      frm_yzinput_xse.qry_yz.FieldByName( 'sl' ).AsString := '1';
      frm_yzinput_xse.qry_yz.FieldByName( 'yplsj' ).AsFloat := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'zylsj' ).AsFloat;
      frm_yzinput_xse.qry_yz.FieldByName( 'jyyb' ).AsString := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'yb' ).AsString;
      frm_yzinput_xse.qry_yz.FieldByName( 'jcff' ).value := '������';
      frm_yzinput_xse.qry_yz.FieldByName( 'jyflbh' ).AsString := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'dldm' ).AsString;
      ;
      frm_yzinput_xse.qry_yz.FieldByName( 'czys' ).value := xsebh;
      frm_yzinput_xse.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput_xse.maxxh + 1;
      p_yzinput_xse.maxxh := p_yzinput_xse.maxxh + 1;
      if trim( frm_yzinput_xse.sp_cx_yp_yz.fieldbyname( 'zyks' ).asstring ) <> '' then
        zy_czks := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'zyks' ).AsString
      else
        zy_czks := pub_ksdm;
      frm_yzinput_xse.qry_yz.FieldByName( 'czks' ).AsString := zy_czks;
      frm_yzinput_xse.qry_xmyz.insert;
      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmdm' ).AsString := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString;
      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmmc' ).AsString := frm_yzinput_xse.sp_cx_yp_yz.FieldByName( 'xmmc' ).AsString;
      frm_yzinput_xse.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
      frm_yzinput_xse.qry_xmyz.post;
    end;
  end
  else
  begin
    frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString;
    frm_yzinput.qry_yz.Edit;
    if trim( frm_yzinput.tmh ) = '' then
    begin
      frm_yzinput.tmh := frm_yzinput.sp_jbxx.FieldByName( 'tmh' ).AsString;
    end;
    frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
    frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
    frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
    frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;

    if yzlb = '����' then
    begin
      frm_yzinput.qry_yz.FieldByName( 'xmdm' ).AsString := '����';
      frm_yzinput.qry_yz.FieldByName( 'xmmc' ).AsString := xmmc;
      frm_yzinput.qry_yz.FieldByName( 'dw' ).AsString := '';
      if frm_yzinput.sfhzbr then   //���￪�������ж�
      begin
        frm_yzinput.qry_yz.FieldByName( 'kdks' ).AsString := frm_yzinput.yz_kdks; //����ԭ����
      end else
      begin
        frm_yzinput.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;   //��ǰ����
      end;

      frm_yzinput.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
      frm_yzinput.qry_yz.FieldByName( 'kdys' ).AsString := frm_yzinput.sp_jbxx.FieldByName( 'zgys' ).AsString;
      frm_yzinput.qry_yz.FieldByName( 'yplsj' ).AsFloat := 0;
      frm_yzinput.qry_yz.FieldByName( 'sl' ).AsString := '1';
      frm_yzinput.qry_yz.FieldByName( 'czks' ).value := pub_ksdm;
      frm_yzinput.qry_xmyz.insert;
      frm_yzinput.qry_xmyz.FieldByName( 'xmdm' ).AsString := '����';
      frm_yzinput.qry_xmyz.FieldByName( 'xmmc' ).AsString := xmmc;
      frm_yzinput.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
      frm_yzinput.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
      frm_yzinput.qry_xmyz.post;
      frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString;
      frm_yzinput.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput.maxxh + 1;
      p_yzinput.maxxh := p_yzinput.maxxh + 1;
    end
    else
    begin
      frm_yzinput.qry_yz.FieldByName( 'xmdm' ).AsString := frm_yzinput.sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString;
      frm_yzinput.qry_yz.FieldByName( 'xmmc' ).AsString := frm_yzinput.sp_cx_yp_yz.FieldByName( 'xmmc' ).AsString;
      frm_yzinput.qry_yz.FieldByName( 'dw' ).AsString := frm_yzinput.sp_cx_yp_yz.FieldByName( 'dw' ).AsString;
      if frm_yzinput.sfhzbr then   //���￪�������ж�
      begin
        frm_yzinput.qry_yz.FieldByName( 'kdks' ).AsString := frm_yzinput.yz_kdks; //����ԭ����
      end else
      begin
        frm_yzinput.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;   //��ǰ����
      end;
      frm_yzinput.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
      frm_yzinput.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
      frm_yzinput.qry_yz.FieldByName( 'sl' ).AsString := '1';
      frm_yzinput.qry_yz.FieldByName( 'yplsj' ).AsFloat := frm_yzinput.sp_cx_yp_yz.FieldByName( 'zylsj' ).AsFloat;
      frm_yzinput.qry_yz.FieldByName( 'jyyb' ).AsString := frm_yzinput.sp_cx_yp_yz.FieldByName( 'yb' ).AsString;
      ;
      frm_yzinput.qry_yz.FieldByName( 'jyflbh' ).AsString := frm_yzinput.sp_cx_yp_yz.FieldByName( 'dldm' ).AsString;
      ;
      frm_yzinput.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput.maxxh + 1;
      p_yzinput.maxxh := p_yzinput.maxxh + 1;
      if trim( frm_yzinput.sp_cx_yp_yz.fieldbyname( 'zyks' ).asstring ) <> '' then
        zy_czks := frm_yzinput.sp_cx_yp_yz.FieldByName( 'zyks' ).AsString
      else
        zy_czks := pub_ksdm;
      frm_yzinput.qry_yz.FieldByName( 'czks' ).AsString := zy_czks;
      frm_yzinput.qry_xmyz.insert;
      frm_yzinput.qry_xmyz.FieldByName( 'xmdm' ).AsString := frm_yzinput.sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString;
      frm_yzinput.qry_xmyz.FieldByName( 'xmmc' ).AsString := frm_yzinput.sp_cx_yp_yz.FieldByName( 'xmmc' ).AsString;
      frm_yzinput.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
      if pub_yydm = '0266' then
      begin
        with DM_data.qry_pub do
        begin
          Close;
          sql.clear;
          sql.add('SELECT LEFT(dldm,4) dm FROM sys_yzxm WHERE xmmc = ''' +
                Trim(frm_yzinput.sp_cx_yp_yz.FieldByName( 'xmmc' ).AsString) + '''');
          open;
        end;
        if DM_data.qry_pub.fieldbyname('dm').asstring = '0104' then
        begin
          frm_yzinput.qry_yz.FieldByName('yzsx').AsString := '��ʱ';
        end;
      end;
      frm_yzinput.qry_xmyz.post;
    end;
  end;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_jyxmwrite_zy.xmmxinyz
  ����:      yangshuai
  ����:      2015.12.10
  ����:      ��
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_jyxmwrite_zy.xmmxinyz;
var
  yzlb, txmdm: string;
  i: Integer;
begin
  if not _xseBz then
  begin
    yzlb := trim(frm_yzinput.qry_yz.FieldByName('lb').AsString);
    txmdm := trim(frm_yzinput.sp_cx_yp_yz.FieldByName('xmdm').AsString);
  //wangbing20151030ҽ����Ϲ����ж�
    frm_yzinput.sp_cx_yz_xmzhmx.Close;
    frm_yzinput.sp_cx_yz_xmzhmx.Parameters.ParamByName('@xmdm').Value := txmdm;
    frm_yzinput.sp_cx_yz_xmzhmx.Open;
    if frm_yzinput.sp_cx_yz_xmzhmx.RecordCount = 0 then
    begin
      xminyz;
      exit;
    end else
    begin
      frm_yzinput.sp_cx_yz_xmzhmx.First;
      i := 0;
      while not frm_yzinput.sp_cx_yz_xmzhmx.Eof do
      begin
        if i = 0 then
          frm_yzinput.qry_yz.Edit else frm_yzinput.qry_yz.Append;
        i := 1;
        frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString;
        frm_yzinput.qry_yz.Edit;
        if trim( frm_yzinput.tmh ) = '' then
        begin
          frm_yzinput.tmh := frm_yzinput.sp_jbxx.FieldByName( 'tmh' ).AsString;
        end;
        frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
        frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
        frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput.qry_yz.FieldByName('zhdm').AsString := txmdm;
        if yzlb = '����' then
        begin
          frm_yzinput.qry_yz.FieldByName( 'xmdm' ).AsString := '����';
          frm_yzinput.qry_yz.FieldByName( 'xmmc' ).AsString := xmmc;
          frm_yzinput.qry_yz.FieldByName( 'dw' ).AsString := '';
          frm_yzinput.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
          frm_yzinput.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
          frm_yzinput.qry_yz.FieldByName( 'kdys' ).AsString := frm_yzinput.sp_jbxx.FieldByName( 'zgys' ).AsString;
          frm_yzinput.qry_yz.FieldByName( 'yplsj' ).AsFloat := 0;
          frm_yzinput.qry_yz.FieldByName( 'sl' ).AsString := '1';
          frm_yzinput.qry_yz.FieldByName( 'czks' ).value := pub_ksdm;
          frm_yzinput.qry_xmyz.insert;
          frm_yzinput.qry_xmyz.FieldByName( 'xmdm' ).AsString := '����';
          frm_yzinput.qry_xmyz.FieldByName( 'xmmc' ).AsString := xmmc;
          frm_yzinput.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
          frm_yzinput.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
          frm_yzinput.qry_xmyz.post;
          frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString;
          frm_yzinput.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput.maxxh + 1;
          p_yzinput.maxxh := p_yzinput.maxxh + 1;
        end
        else
        begin
          frm_yzinput.qry_yz.FieldByName( 'xmdm' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmdm' ).AsString;
          frm_yzinput.qry_yz.FieldByName( 'xmmc' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmmc' ).AsString;
          frm_yzinput.qry_yz.FieldByName( 'dw' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'dw' ).AsString;
          frm_yzinput.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
          frm_yzinput.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
          frm_yzinput.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
          if yzlb = '����' then
          begin
            frm_yzinput.qry_yz.FieldByName( 'sl' ).AsFloat := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'fysl' ).AsFloat;
          end
          else
          begin
            frm_yzinput.qry_yz.FieldByName( 'sl' ).AsString := '2';
          end;

          frm_yzinput.qry_yz.FieldByName( 'yplsj' ).AsFloat := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'zylsj' ).AsFloat;
          frm_yzinput.qry_yz.FieldByName( 'jyyb' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'yb' ).AsString;
          ;
          frm_yzinput.qry_yz.FieldByName( 'jyflbh' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'dldm' ).AsString;
          ;
          frm_yzinput.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput.maxxh + 1;
          p_yzinput.maxxh := p_yzinput.maxxh + 1;
          if trim( frm_yzinput.sp_cx_yz_xmzhmx.fieldbyname( 'zyks' ).asstring ) <> '' then
            zy_czks := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'zyks' ).AsString
          else
            zy_czks := pub_ksdm;
          frm_yzinput.qry_yz.FieldByName( 'czks' ).AsString := zy_czks;
          frm_yzinput.qry_xmyz.insert;
          frm_yzinput.qry_xmyz.FieldByName( 'xmdm' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmdm' ).AsString;
          frm_yzinput.qry_xmyz.FieldByName( 'xmmc' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmmc' ).AsString;
          frm_yzinput.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
          frm_yzinput.qry_xmyz.post;
        end;
        frm_yzinput.sp_cx_yz_xmzhmx.Next;
      end;
    end;
  end else    //������
  begin
      xminyz;
//    frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString;
//    frm_yzinput_xse.qry_yz.Edit;
//    if trim( frm_yzinput_xse.tmh ) = '' then
//    begin
//      frm_yzinput_xse.tmh := frm_yzinput_xse.sp_jbxx.FieldByName( 'tmh' ).AsString;
//    end;
//    frm_yzinput_xse.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput_xse.tmh;
//    frm_yzinput_xse.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput_xse.zyh;
//    frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
//    frm_yzinput_xse.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
//    frm_yzinput_xse.qry_yz.FieldByName('zhdm').AsString := txmdm;
//    if yzlb = '����' then
//    begin
//      frm_yzinput_xse.qry_yz.FieldByName( 'xmdm' ).AsString := '����';
//      frm_yzinput_xse.qry_yz.FieldByName( 'xmmc' ).AsString := xmmc;
//      frm_yzinput_xse.qry_yz.FieldByName( 'dw' ).AsString := '';
//      frm_yzinput_xse.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
//      frm_yzinput_xse.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
//      frm_yzinput_xse.qry_yz.FieldByName( 'kdys' ).AsString := frm_yzinput_xse.sp_jbxx.FieldByName( 'zgys' ).AsString;
//      frm_yzinput_xse.qry_yz.FieldByName( 'yplsj' ).AsFloat := 0;
//      frm_yzinput_xse.qry_yz.FieldByName( 'sl' ).AsString := '1';
//      frm_yzinput_xse.qry_yz.FieldByName( 'czks' ).value := pub_ksdm;
//      frm_yzinput_xse.qry_yz.FieldByName( 'czys' ).value := xsebh;
//      frm_yzinput_xse.qry_xmyz.insert;
//      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmdm' ).AsString := '����';
//      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmmc' ).AsString := xmmc;
//      frm_yzinput_xse.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
//      frm_yzinput_xse.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
//      frm_yzinput_xse.qry_xmyz.post;
//      frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString;
//      frm_yzinput_xse.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput_xse.maxxh + 1;
//      p_yzinput_xse.maxxh := p_yzinput_xse.maxxh + 1;
//    end
//    else
//    begin
//      frm_yzinput_xse.qry_yz.FieldByName( 'xmdm' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmdm' ).AsString;
//      frm_yzinput_xse.qry_yz.FieldByName( 'xmmc' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmmc' ).AsString;
//      frm_yzinput_xse.qry_yz.FieldByName( 'dw' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'dw' ).AsString;
//      frm_yzinput_xse.qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
//      frm_yzinput_xse.qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
//      frm_yzinput_xse.qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
//      if yzlb = '����' then
//      begin
//        frm_yzinput.qry_yz.FieldByName( 'sl' ).AsFloat := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'fysl' ).AsFloat;
//      end
//      else
//      begin
//        frm_yzinput.qry_yz.FieldByName( 'sl' ).AsString := '1';
//      end;
//      frm_yzinput_xse.qry_yz.FieldByName( 'yplsj' ).AsFloat := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'zylsj' ).AsFloat;
//      frm_yzinput_xse.qry_yz.FieldByName( 'jyyb' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'yb' ).AsString;
//      frm_yzinput_xse.qry_yz.FieldByName( 'jcff' ).value := '������';
//      frm_yzinput_xse.qry_yz.FieldByName( 'jyflbh' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'dldm' ).AsString;
//      ;
//      frm_yzinput_xse.qry_yz.FieldByName( 'czys' ).value := xsebh;
//      frm_yzinput_xse.qry_yz.fieldbyname( 'xh' ).asinteger := p_yzinput_xse.maxxh + 1;
//      p_yzinput_xse.maxxh := p_yzinput_xse.maxxh + 1;
//      if trim( frm_yzinput.sp_cx_yz_xmzhmx.fieldbyname( 'zyks' ).asstring ) <> '' then
//        zy_czks := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'zyks' ).AsString
//      else
//        zy_czks := pub_ksdm;
//      frm_yzinput_xse.qry_yz.FieldByName( 'czks' ).AsString := zy_czks;
//      frm_yzinput_xse.qry_xmyz.insert;
//      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmdm' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmdm' ).AsString;
//      frm_yzinput_xse.qry_xmyz.FieldByName( 'xmmc' ).AsString := frm_yzinput.sp_cx_yz_xmzhmx.FieldByName( 'xmmc' ).AsString;
//      frm_yzinput_xse.qry_xmyz.FieldByName( 'lb' ).AsString := pr_yzlb;
//      frm_yzinput_xse.qry_xmyz.post;
//    end;
  end;
end;

//
{-------------------------------------------------------------------------------
  ������:    Tfrm_jyxmwrite_zy.BitBtn1Click
  ����:      yansghuai
  ����:      2016.01.15
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_jyxmwrite_zy.BitBtn1Click( Sender: TObject );
var
  n: integer;
begin
  if PageControl1.ActivePageIndex = 1 then
  begin
    if pub_yydm<>'0003' then
    begin
      //��������־
      if _xseBz then
      begin
        for n := 0 to i - 1 do
        begin
          if clb.Checked[n] then
          begin
            if trim( frm_yzinput_xse.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput_xse.qry_yz.Append
            else
              frm_yzinput_xse.qry_yz.edit;
            xmmc := copy( clb.Items[n], 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.close;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( clb.Items[n], 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput_xse.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput_xse.sp_jbxx.fieldbyname('fylb').asstring ;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput_xse.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
          if pub_sfqymzyzdb then
          begin
            xmmxinyz
          end else
          begin
            xminyz;
          end;
          end;
        end;
        frm_yzinput_xse.qry_yz.Append;
        frm_yzinput_xse.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput_xse.tmh;
        frm_yzinput_xse.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput_xse.zyh;
        frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput_xse.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput_xse.grid_yzlr.SelectedIndex := 1;
        self.close;
      end
      else
      begin
        for n := 0 to i - 1 do
        begin
          if clb.Checked[n] then
          begin
            if trim( frm_yzinput.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput.qry_yz.Append
            else
              frm_yzinput.qry_yz.edit;
            xmmc := copy( clb.Items[n], 1, 4 );
            frm_yzinput.sp_cx_yp_yz.close;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( clb.Items[n], 1, 4 );
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring ;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
          if pub_sfqymzyzdb then
          begin
            xmmxinyz
          end else
          begin
            xminyz;
          end;
          end;
        end;
        frm_yzinput.qry_yz.Append;
        frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
        frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
        frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput.grid_yzlr.SelectedIndex := 1;
        self.close;
      end;
    end
    else
    begin
          //��������־
      if _xseBz then
      begin
        qry_cx_xmdm.First;
        while not qry_cx_xmdm.eof do
        begin
            if trim( frm_yzinput_xse.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput_xse.qry_yz.Append
            else
              frm_yzinput_xse.qry_yz.edit;
            //xmmc := copy( clb.Items[n], 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.close;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( qry_cx_xmdm.FieldByName('xmdm').asstring, 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput_xse.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput_xse.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput_xse.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
          if pub_sfqymzyzdb then
          begin
            xmmxinyz
          end else
          begin
            xminyz;
          end;
          qry_cx_xmdm.Next;
        end;
        frm_yzinput_xse.qry_yz.Append;
        frm_yzinput_xse.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput_xse.tmh;
        frm_yzinput_xse.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput_xse.zyh;
        frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput_xse.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput_xse.grid_yzlr.SelectedIndex := 1;
        self.close;
      end
      else
      begin
        qry_cx_xmdm.First;
        while not qry_cx_xmdm.eof do
        begin

            if trim( frm_yzinput.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput.qry_yz.Append
            else
              frm_yzinput.qry_yz.edit;
           // xmmc := copy( clb.Items[n], 1, 4 );
            frm_yzinput.sp_cx_yp_yz.close;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( qry_cx_xmdm.FieldByName('xmdm').asstring, 1, 4 );
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
          if pub_sfqymzyzdb then
          begin
            xmmxinyz
          end else
          begin
            xminyz;
          end;
          qry_cx_xmdm.Next;
        end;
        frm_yzinput.qry_yz.Append;
        frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
        frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
        frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput.grid_yzlr.SelectedIndex := 1;
        self.close;
      end;
    end;
  end else
  if PageControl1.ActivePageIndex = 2 then   //ҽ����Ŀ����
  begin
    if pub_yydm<>'0003' then
    begin
      //��������־
      if _xseBz then
      begin
        for n := 0 to i - 1 do
        begin
          if chklst_yzxmpx.Checked[n] then
          begin
            if trim( frm_yzinput_xse.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput_xse.qry_yz.Append
            else
              frm_yzinput_xse.qry_yz.edit;
            xmmc := copy( chklst_yzxmpx.Items[n], 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.close;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( chklst_yzxmpx.Items[n], 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput_xse.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput_xse.sp_jbxx.fieldbyname('fylb').asstring ;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput_xse.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
            if pub_sfqymzyzdb then
            begin
              xmmxinyz
            end else
            begin
              xminyz;
            end;
          end;
        end;
        frm_yzinput_xse.qry_yz.Append;
        frm_yzinput_xse.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput_xse.tmh;
        frm_yzinput_xse.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput_xse.zyh;
        frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput_xse.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput_xse.grid_yzlr.SelectedIndex := 1;
        self.close;
      end
      else
      begin
        for n := 0 to i - 1 do
        begin
          if chklst_yzxmpx.Checked[n] then
          begin
            if trim( frm_yzinput.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput.qry_yz.Append
            else
              frm_yzinput.qry_yz.edit;
            xmmc := copy( chklst_yzxmpx.Items[n], 1, 4 );
            frm_yzinput.sp_cx_yp_yz.close;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( chklst_yzxmpx.Items[n], 1, 4 );
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
            if pub_sfqymzyzdb then
            begin
              xmmxinyz
            end else
            begin
              xminyz;
            end;
          end;
        end;
        frm_yzinput.qry_yz.Append;
        frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
        frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
        frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput.grid_yzlr.SelectedIndex := 1;
        self.close;
      end;
    end
    else
    begin
          //��������־
      if _xseBz then
      begin
        qry_cx_xmdm.First;
        while not qry_cx_xmdm.eof do
        begin
            if trim( frm_yzinput_xse.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput_xse.qry_yz.Append
            else
              frm_yzinput_xse.qry_yz.edit;
            //xmmc := copy( clb.Items[n], 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.close;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( qry_cx_xmdm.FieldByName('xmdm').asstring, 1, 4 );
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput_xse.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput_xse.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput_xse.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput_xse.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
          if pub_sfqymzyzdb then
          begin
            xmmxinyz
          end else
          begin
            xminyz;
          end;
          qry_cx_xmdm.Next;
        end;
        frm_yzinput_xse.qry_yz.Append;
        frm_yzinput_xse.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput_xse.tmh;
        frm_yzinput_xse.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput_xse.zyh;
        frm_yzinput_xse.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput_xse.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput_xse.grid_yzlr.SelectedIndex := 1;
        self.close;
      end
      else
      begin
        qry_cx_xmdm.First;
        while not qry_cx_xmdm.eof do
        begin

            if trim( frm_yzinput.qry_yz.fieldbyname( 'lb' ).asstring ) <> '' then
              frm_yzinput.qry_yz.Append
            else
              frm_yzinput.qry_yz.edit;
           // xmmc := copy( clb.Items[n], 1, 4 );
            frm_yzinput.sp_cx_yp_yz.close;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := copy( qry_cx_xmdm.FieldByName('xmdm').asstring, 1, 4 );
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
            frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
            frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
            frm_yzinput.sp_cx_yp_yz.open;
            //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
          if pub_sfqymzyzdb then
          begin
            xmmxinyz
          end else
          begin
            xminyz;
          end;
          qry_cx_xmdm.Next;
        end;
        frm_yzinput.qry_yz.Append;
        frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
        frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
        frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
        frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
        frm_yzinput.grid_yzlr.SelectedIndex := 1;
        self.close;
      end;
    end;

  end;
end;

procedure Tfrm_jyxmwrite_zy.chklst_yzxmpxClickCheck(Sender: TObject);
var
  i: integer;
  bl: boolean;
  xzdm_1:string;
begin
  i := chklst_yzxmpx.ItemIndex;
  bl := chklst_yzxmpx.Checked[i];
  if Pos('_', chklst_yzxmpx.Items.Strings[i]) > 0 then
  begin
    if pub_yydm='0003' then
    begin
      if bl=false then
      begin
        xzdm:=StringReplace(xzdm,copy( chklst_yzxmpx.Items.Strings[i],1,4),'',[rfReplaceAll]);
      end
      else
      begin
        xzdm:=xzdm+copy( chklst_yzxmpx.Items.Strings[i],1,4)+',';
      end;
      xzdm_1:=','+xzdm;
      qry_cx_xmdm.close;
      qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
      ''''+xzdm_1+''''+')>0';
      qry_cx_xmdm.Open;
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
    end;
    exit;
  end;
  while (i < chklst_yzxmpx.Items.Count - 1) do
  begin
    i := i + 1;
    if pub_yydm='0003' then
    begin
      if Pos('_', chklst_yzxmpx.Items.Strings[i]) = 0 then
      begin
        xzdm_1:=','+xzdm;
        qry_cx_xmdm.close;
        qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
        ''''+xzdm_1+''''+')>0';
        qry_cx_xmdm.Open;
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
        exit;
      end
      else
      begin
  //    else
  //    begin
  //      if pub_yydm='0003' then
  //      begin
          if bl=false then
          begin
            xzdm:=StringReplace(xzdm,copy( chklst_yzxmpx.Items.Strings[i],1,4),'',[rfReplaceAll]);
          end
          else
          begin
            xzdm:=xzdm+copy( chklst_yzxmpx.Items.Strings[i],1,4)+',';
          end;
  //      end;
  //    end;
        chklst_yzxmpx.Checked[i] := bl;
      end;
    end
    else
    begin
      if Pos('_', chklst_yzxmpx.Items.Strings[i]) = 0 then
      exit
      else
      chklst_yzxmpx.Checked[i] := bl;
    end;

  end;
  if pub_yydm='0003' then
  begin
    xzdm_1:=','+xzdm;
    qry_cx_xmdm.close;
    qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
    ''''+xzdm_1+''''+')>0';
      qry_cx_xmdm.Open;
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
  end;

end;

procedure Tfrm_jyxmwrite_zy.chklst_yzxmpxDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Rgn: HRgn;
  fns: Tfontstyles;
begin
  with TCheckListBox(Control) do
  begin
    fns := Font.Style;
    if pos('_', chklst_yzxmpx.Items.Strings[index]) = 0 then
    begin
      Canvas.Font.Color := clred;
      Canvas.Font.Style := fns + [fsBold];
    end
    else
    begin
      //Canvas.Font.Color := clblack;
      //Canvas.Font.Style := fns
    end;
    with Rect do
      Rgn := CreateRectRgn(Left + 2, Top + 2, Right - 2, Bottom - 2);
    deleteObject(Rgn);
    Canvas.TextRect(Rect, Rect.Left + 1, Rect.Top + 1, Items[Index]);
  end;

end;


procedure Tfrm_jyxmwrite_zy.clbClickCheck(Sender: TObject);
var
  i: integer;
  bl: boolean;
  xzdm_1:string;
begin
  i := clb.ItemIndex;
  bl := clb.Checked[i];
  if Pos('_', clb.Items.Strings[i]) > 0 then
  begin
    if pub_yydm='0003' then
    begin
      if bl=false then
      begin
        xzdm:=StringReplace(xzdm,copy( clb.Items.Strings[i],1,4),'',[rfReplaceAll]);
      end
      else
      begin
        xzdm:=xzdm+copy( clb.Items.Strings[i],1,4)+',';
      end;
      xzdm_1:=','+xzdm;
      qry_cx_xmdm.close;
      qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
      ''''+xzdm_1+''''+')>0';
      qry_cx_xmdm.Open;
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
    end;
    exit;
  end;
  while (i < clb.Items.Count - 1) do
  begin
    i := i + 1;
    if pub_yydm='0003' then
    begin
      if Pos('_', clb.Items.Strings[i]) = 0 then
      begin
        xzdm_1:=','+xzdm;
        qry_cx_xmdm.close;
        qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
        ''''+xzdm_1+''''+')>0';
        qry_cx_xmdm.Open;
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
        exit;
      end
      else
      begin
  //    else
  //    begin
  //      if pub_yydm='0003' then
  //      begin
          if bl=false then
          begin
            xzdm:=StringReplace(xzdm,copy( clb.Items.Strings[i],1,4),'',[rfReplaceAll]);
          end
          else
          begin
            xzdm:=xzdm+copy( clb.Items.Strings[i],1,4)+',';
          end;
  //      end;
  //    end;
        clb.Checked[i] := bl;
      end;
    end
    else
    begin
      if Pos('_', clb.Items.Strings[i]) = 0 then
      exit
      else
      clb.Checked[i] := bl;
    end;

  end;
  if pub_yydm='0003' then
  begin
    xzdm_1:=','+xzdm;
    qry_cx_xmdm.close;
    qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
    ''''+xzdm_1+''''+')>0';
    qry_cx_xmdm.Open;
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
  end;

end;

procedure Tfrm_jyxmwrite_zy.clbDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  Rgn: HRgn;
  fns: Tfontstyles;
begin
  with TCheckListBox(Control) do
  begin
    fns := Font.Style;
    if pos('_', clb.Items.Strings[index]) = 0 then
    begin
      Canvas.Font.Color := clred;
      Canvas.Font.Style := fns + [fsBold];
    end
    else
    begin
      //Canvas.Font.Color := clblack;
      //Canvas.Font.Style := fns
    end;
    with Rect do
      Rgn := CreateRectRgn(Left + 2, Top + 2, Right - 2, Bottom - 2);
    deleteObject(Rgn);
    Canvas.TextRect(Rect, Rect.Left + 1, Rect.Top + 1, Items[Index]);
  end;

end;

procedure Tfrm_jyxmwrite_zy.clb_wswxmClickCheck(Sender: TObject);
var
  i: integer;
  bl: boolean;
  xzdm_1:string;
begin
  i := clb_wswxm.ItemIndex;
  bl := clb_wswxm.Checked[i];
  if Pos('_', clb_wswxm.Items.Strings[i]) > 0 then
  begin
    if pub_yydm='0003' then
    begin
      if bl=false then
      begin
        xzdm:=StringReplace(xzdm,copy( clb_wswxm.Items.Strings[i],1,4),'',[rfReplaceAll]);
      end
      else
      begin
        xzdm:=xzdm+copy( clb_wswxm.Items.Strings[i],1,4)+',';
      end;
      xzdm_1:=','+xzdm;
      qry_cx_xmdm.close;
      qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
      ''''+xzdm_1+''''+')>0';
      qry_cx_xmdm.Open;
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
    end;
    exit;
  end;
  while (i < clb_wswxm.Items.Count - 1) do
  begin
    i := i + 1;
    if pub_yydm='0003' then
    begin
      if Pos('_', clb_wswxm.Items.Strings[i]) = 0 then
      begin
        xzdm_1:=','+xzdm;
        qry_cx_xmdm.close;
        qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
        ''''+xzdm_1+''''+')>0';
        qry_cx_xmdm.Open;
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
        xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
        exit;
      end
      else
      begin
  //    else
  //    begin
  //      if pub_yydm='0003' then
  //      begin
          if bl=false then
          begin
            xzdm:=StringReplace(xzdm,copy( clb_wswxm.Items.Strings[i],1,4),'',[rfReplaceAll]);
          end
          else
          begin
            xzdm:=xzdm+copy( clb_wswxm.Items.Strings[i],1,4)+',';
          end;
  //      end;
  //    end;
        clb.Checked[i] := bl;
      end;
    end
    else
    begin
      if Pos('_', clb_wswxm.Items.Strings[i]) = 0 then
      exit
      else
      clb.Checked[i] := bl;
    end;

  end;
  if pub_yydm='0003' then
  begin
    xzdm_1:=','+xzdm;
    qry_cx_xmdm.close;
    qry_cx_xmdm.sql.text:='select * from sys_yzxm where charindex('',''+xmdm+'','','+
    ''''+xzdm_1+''''+')>0';
    qry_cx_xmdm.Open;
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,,',',,,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,,',',,,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,,',',,,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,,',',,,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,,',',,,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,,',',,,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,,',',,,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,,',',,,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,,',',,,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,,',',,,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,,',',,,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,,',',,,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,,',',,,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,,',',,',[rfReplaceAll]);
      xzdm:=StringReplace(xzdm,',,',',',[rfReplaceAll]);
  end;

end;

procedure Tfrm_jyxmwrite_zy.clb_wswxmDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Rgn: HRgn;
  fns: Tfontstyles;
begin
  with TCheckListBox(Control) do
  begin
    fns := Font.Style;
    if pos('_', clb.Items.Strings[index]) = 0 then
    begin
      Canvas.Font.Color := clred;
      Canvas.Font.Style := fns + [fsBold];
    end
    else
    begin
      //Canvas.Font.Color := clblack;
      //Canvas.Font.Style := fns
    end;
    with Rect do
      Rgn := CreateRectRgn(Left + 2, Top + 2, Right - 2, Bottom - 2);
    deleteObject(Rgn);
    Canvas.TextRect(Rect, Rect.Left + 1, Rect.Top + 1, Items[Index]);
  end;
end;

procedure Tfrm_jyxmwrite_zy.DBGridEh1DblClick( Sender: TObject );
begin
  frm_yzinput.sp_cx_yp_yz.close;
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := ad_sfxm.fieldbyname( 'xmdm' ).asstring;
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
  frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
  frm_yzinput.sp_cx_yp_yz.open;
  xminyz;
  frm_yzinput.qry_yz.Append;
  frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
  frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
  frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
  frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
  frm_yzinput.grid_yzlr.SelectedIndex := 1;
  self.close;
end;

procedure Tfrm_jyxmwrite_zy.DBGridEh1KeyPress( Sender: TObject;
  var Key: Char );
begin
  if key = #13 then
  begin
    frm_yzinput.sp_cx_yp_yz.close;
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := ad_sfxm.fieldbyname( 'xmdm' ).asstring;
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
    frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
    frm_yzinput.sp_cx_yp_yz.open;
    xminyz;
    frm_yzinput.qry_yz.Append;
    frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
    frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
    frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
    frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
    frm_yzinput.grid_yzlr.SelectedIndex := 1;
    self.close;
  end;
end;
//���뷽ʽ3������Ŀ����yangshuai
procedure Tfrm_jyxmwrite_zy.DBGridEh3DblClick(Sender: TObject);
begin
  frm_yzinput.sp_cx_yp_yz.close;
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := ad_yzxmpx.fieldbyname( 'xmdm' ).asstring;
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
  frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
  frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
  frm_yzinput.sp_cx_yp_yz.open;
  xminyz;
  frm_yzinput.qry_yz.Append;
  frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
  frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
  frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
  frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
  frm_yzinput.grid_yzlr.SelectedIndex := 1;
  self.close;
end;
 //���뷽ʽ3������Ŀ����yangshuai
procedure Tfrm_jyxmwrite_zy.DBGridEh3KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    frm_yzinput.sp_cx_yp_yz.close;
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@pym' ).value := ad_yzxmpx.fieldbyname( 'xmdm' ).asstring;
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@jsfs' ).value := '1';
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@ksdm' ).value := pub_zyxyfdm;
    frm_yzinput.sp_cx_yp_yz.parameters.parambyname( '@lb' ).value := pr_yzlb;
    frm_yzinput.sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := frm_yzinput.sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
    frm_yzinput.sp_cx_yp_yz.open;
    xminyz;
    frm_yzinput.qry_yz.Append;
    frm_yzinput.qry_yz.FieldByName( 'tmh' ).AsString := frm_yzinput.tmh;
    frm_yzinput.qry_yz.FieldByName( 'zyh' ).AsString := frm_yzinput.zyh;
    frm_yzinput.qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
    frm_yzinput.qry_yz.FieldByName( 'lb' ).AsString := pr_yzlb;
    frm_yzinput.grid_yzlr.SelectedIndex := 1;
    self.close;
  end;
end;

end.
