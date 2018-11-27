unit p_jytmcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCheckBox, cxTextEdit, ADODB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, ExtCtrls, Printers;

type
  Tfrm_jytmcd = class( TForm )
    Panel1: TPanel;
    bt_can: TButton;
    Button1: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1yzbz: TcxGridDBColumn;
    cxGridDBTableView1sfcd: TcxGridDBColumn;
    cxGridDBTableView1tmh: TcxGridDBColumn;
    cxGridDBTableView1brxm: TcxGridDBColumn;
    cxGridDBTableView1brxb: TcxGridDBColumn;
    cxGridDBTableView1brnl: TcxGridDBColumn;
    cxGridDBTableView1jyxmmc: TcxGridDBColumn;
    cxGridDBTableView1ybmc: TcxGridDBColumn;
    cxGridDBTableView1yb: TcxGridDBColumn;
    cxGridDBTableView1jyfzbh: TcxGridDBColumn;
    cxGridDBTableView1kdysmc: TcxGridDBColumn;
    cxGridDBTableView1kdksmc: TcxGridDBColumn;
    cxGridDBTableView1yszd: TcxGridDBColumn;
    cxGridDBTableView1cysj: TcxGridDBColumn;
    cxGridDBTableView1cyry: TcxGridDBColumn;
    cxGridDBTableView1cdry: TcxGridDBColumn;
    cxGridDBTableView1cdrq: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DS_brxx: TDataSource;
    qry_brxx: TADOQuery;
    qry_brxxID: TAutoIncField;
    qry_brxxfyid: TIntegerField;
    qry_brxxtmh: TStringField;
    qry_brxxbrxm: TStringField;
    qry_brxxbrxb: TStringField;
    qry_brxxbrnl: TStringField;
    qry_brxxkdysdm: TStringField;
    qry_brxxkdysmc: TStringField;
    qry_brxxkdksdm: TStringField;
    qry_brxxkdksmc: TStringField;
    qry_brxxyszd: TStringField;
    qry_brxxjyxmdm: TStringField;
    qry_brxxjyxmmc: TStringField;
    qry_brxxjyfzbh: TStringField;
    qry_brxxjyfzxh: TIntegerField;
    qry_brxxcysj: TDateTimeField;
    qry_brxxsqrq: TDateTimeField;
    qry_brxxcyry: TStringField;
    qry_brxxsfdy: TBooleanField;
    qry_brxxdyrq: TDateTimeField;
    qry_brxxma: TStringField;
    qry_brxxyb: TStringField;
    qry_brxxsfrq: TDateTimeField;
    qry_brxxfyzje: TBCDField;
    qry_brxxsszje: TBCDField;
    qry_brxxsjbh: TIntegerField;
    qry_brxxdldm: TStringField;
    qry_brxxsfcd: TBooleanField;
    qry_brxxjydlpx: TStringField;
    qry_brxxyzbz: TStringField;
    qry_ydy: TADOQuery;
    qry_brxxbrxm1: TStringField;
    qry_brxxbrnl1: TStringField;
    qry_brxxbrxb1: TStringField;
    qry_cdjl: TADOQuery;
    qry_brxxcdrq: TDateTimeField;
    qry_brxxcdry: TStringField;
    procedure FormShow( Sender: TObject );
    procedure bt_canClick( Sender: TObject );
    procedure Button1Click( Sender: TObject );
    procedure tmdy_dz;
  private
    procedure ChangePrinter(_index: Integer);
    procedure RevertPrinter;
    procedure ChangePrinter_syy;
    { Private declarations }
  public
    { Public declarations }
    cd_tmh: string;
    cd_zyh: string;
  end;

var
  frm_jytmcd: Tfrm_jytmcd;

  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  sfqyydhsz:Boolean;

implementation

{$R *.dfm}

uses p_dm, p_func, p_jydtmdy;

procedure Tfrm_jytmcd.bt_canClick( Sender: TObject );
var
  tmdy:function(bm,xb,kscw,xm,nl,bz,cysj,yb,xmmc1,xmmc2,xmmc3,yzbz,dyjmc_1:AnsiString):boolean;stdcall;
  ma,Vtemp: string;
  ii, Printcs, jj,n: integer;
  mysz, xmmcsz: array of string;
  Getxmmc, lb, Getybmc,Getsgys: string;
  jyxmmclj: string;
  sfdybz: string;
  V1 : array[0..9] of Integer;
  _xmmcStr: TStrings;
  dll_1:Cardinal;
  yzbz_1,xmmc_1,xmmc_2,xmmc_3,xb_1,nl_1,xm_1,kscw_1,bm_1,bz_1,cysj_1,yb_1,dyjmc_1:string;
  cd_rq:TDateTime;
begin
  if sfqyydhsz=true then
  begin
    tmdy_dz;
    Exit;
  end;
  qry_ydy.Close;
  qry_ydy.Open;
//  if pub_yydm='0003' then
//    ChangePrinter_syy
//  else
//    ChangePrinter;
  if pub_yydm = '0003' then
  begin
    ChangePrinter_syy;
  end  else if pub_yydm='0271' then
  begin
    ChangePrinter(8);
  end else
  begin
    ChangePrinter(3);
  end;
  jyxmmclj := '';
  if pub_yydm<>'0013' then
  begin
    if qry_brxx.Active and ( qry_brxx.RecordCount > 0 ) then
    begin
      qry_brxx.First;
      cd_rq := Frm_func.curr_date;
      ii := 0;
      Setlength( mysz, qry_brxx.RecordCount );
      Setlength( xmmcsz, qry_brxx.RecordCount );
      while not qry_brxx.Eof do
      begin
        if pub_yydm='0020' then
        begin
          if not qry_ydy.Locate('barcode',qry_brxx.FieldByName('jyfzbh').AsString,[]) then
          begin
            if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
            begin
              mysz[ii] := trim( qry_brxx.fieldByName( 'jyfzbh' ).AsString );
              xmmcsz[ii] := trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
              jyxmmclj := jyxmmclj + ',' + trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
              Inc( ii, 1 );
            end;
          end
          else
          begin
            if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
            begin
              application.MessageBox('该条码号已通过LIS审核,无法重打','注意',16);
            end;
          end;
        end
        else
        begin
          if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
          begin
            mysz[ii] := trim( qry_brxx.fieldByName( 'jyfzbh' ).AsString );
            xmmcsz[ii] := trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
            jyxmmclj := jyxmmclj + ',' + trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
            Inc( ii, 1 );
            qry_cdjl.Close;
            qry_cdjl.SQL.Text := 'select * from zybl_jycdjl where tmh=:tmh';
            qry_cdjl.Parameters.ParamByName('tmh').Value := qry_brxx.FieldByName('tmh').AsString;
            qry_cdjl.Open;
            qry_cdjl.Append;
            qry_cdjl.FieldByName('jyfzbh').Value := trim( qry_brxx.fieldByName( 'jyfzbh' ).AsString );
            qry_cdjl.FieldByName('jyxmmc').Value := trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
            qry_cdjl.FieldByName('tmh').Value := trim( qry_brxx.fieldByName( 'tmh' ).AsString );
            qry_cdjl.FieldByName('cdrq').Value := cd_rq;
            qry_cdjl.FieldByName('cdry').Value := pub_czydm;
            qry_cdjl.Post;
          end;
        end;
        qry_brxx.Next;
      end;
      Printcs := ii - 1;
      //qry_brxx.First;
      with frm_jydtmdy do
      begin
        //winexec('regedit.exe /s REG2_1.reg', sw_hide);
        for ii := 0 to Printcs do
        begin
          sfdybz := '1';
          if ii <> 0 then
          begin
            for jj := 0 to ii - 1 do
            begin
              if ( trim( mysz[ii] ) = mysz[jj] ) then
                sfdybz := '0';
            end;
          end;
          if sfdybz <> '0' then
          begin
            Qry_print1.close;
            Qry_print1.Parameters.ParamByName( 'fzbh' ).Value := mysz[ii];
            Qry_print1.Parameters.ParamByName( 'lb' ).Value := '2';
            Qry_print1.Parameters.ParamByName( 'srrq' ).Value := dtp_zxsj.DateTime;
            Qry_print1.Parameters.ParamByName( 'jyxmmc' ).Value := jyxmmclj;
            Qry_print1.Open;
            if pub_yydm<>'0003' then
            begin
              if pub_yydm='0012' then  //三台中医院打印需求处理 开始
                begin

                     Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
                     getybmc := trim(Qry_print1.FieldByname('yb').AsString);


                      if Pos('急', trim(Qry_print1.FieldByname('yzbz').AsString)) > 0 then
                    begin
                      yzbz.Caption := '急';
                    end
                    else
                    begin
                      yzbz.Caption := '';
                    end;


                    _xmmcStr := TStringList.Create;
                    _xmmcStr.Delimiter := ' ';
                    _xmmcStr.DelimitedText := Getxmmc;


                    //xmmcstr<4的情况处理开始
                    if _xmmcStr.Count<4 then
                    begin

                      xmmc1.Caption :='';
                      xmmc2.Caption :='';
                      xmmc3.Caption :='';


                      if _xmmcStr.Count>0 then
                      xmmc1.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count>1 then
                      xmmc2.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count>2 then
                      xmmc3.Caption := _xmmcStr.Strings[2];

                      brcd1.BarCode:=mysz[ii];
                      brcd1.Draw(QRImage3.Canvas,4,0,35,0);

                       QRLabel2.Enabled:=False;
                       QRDBText4.Enabled:=False;
                       QRImage3.Enabled:=true;
                       yzbz.Enabled:=true;

                        if v_IsPrinterJoin=True then
                        if  QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                        begin
                          QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                        end;
                        QuickRep3.print;
                    end
                    else
                    begin    //xmmcstr>=4的情况处理
                      xmmc1.Caption :='';
                      xmmc2.Caption :='';
                      xmmc3.Caption :='';

                      if _xmmcStr.Count>0 then
                      xmmc1.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count>1 then
                      xmmc2.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count>2 then
                      xmmc3.Caption := _xmmcStr.Strings[2];
                      if _xmmcStr.Count>3 then
                      xmmc3.Caption := Copy(_xmmcStr.Strings[2],1,ReversePos(',',_xmmcStr.Strings[2])-1);

                      //------------------------------------------------------
                      brcd1.BarCode:=mysz[ii];
                      brcd1.Draw(QRImage3.Canvas,4,0,35,0);

                       QRLabel2.Enabled:=False;
                    //   QRDBText4.Enabled:=False;
                       QRImage3.Enabled:=true;
                       yzbz.Enabled:=true;

                        if v_IsPrinterJoin=True then
                        if  QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                        begin
                          QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                        end;
                        QuickRep3.print;

                      xmmc1.Caption :='';
                      xmmc2.Caption :='';
                      xmmc3.Caption :='';

                      if _xmmcStr.Count>3 then
                      begin
                        xmmc1.Caption := Copy(_xmmcStr.Strings[2],ReversePos(',',_xmmcStr.Strings[2])+1);
                        xmmc2.Caption := _xmmcStr.Strings[3];
                      end;
                      if _xmmcStr.Count>4 then
                      xmmc3.Caption := _xmmcStr.Strings[4];


                      //------------------------------------------------------
                      brcd1.BarCode:=mysz[ii];
                      brcd1.Draw(QRImage3.Canvas,4,0,35,0);

                       QRLabel2.Enabled:=False;
                   //    QRDBText4.Enabled:=False;
                       QRImage3.Enabled:=true;
                       yzbz.Enabled:=true;


                        if v_IsPrinterJoin=True then
                        if  QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                        begin
                          QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                        end;
                        QuickRep3.print;

                    end;

                end
                   //三台中医院打印需求处理结束
                else if pub_yydm = '0234' then
                begin //、遂宁中医院处理开始

                  Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
                  getybmc := trim(Qry_print1.FieldByname('yb').AsString);
                  if Pos('急', trim(Qry_print1.FieldByname('yzbz').AsString)) > 0 then
                  begin
                    yzbz_6.Caption := '急';
                  end
                  else
                  begin
                    yzbz_6.Caption := '';
                  end;

                  //-----------calmhawk-----------------------------------
                  _xmmcStr := TStringList.Create;
                  _xmmcStr.Delimiter := ' ';
                  _xmmcStr.DelimitedText := Getxmmc;
                  xmmc12.Caption := '';
                  xmmc21.Caption := '';
                  xmmc32.Caption := '';
                  if _xmmcStr.Count > 0 then
                    xmmc12.Caption := _xmmcStr.Strings[0];
                  if _xmmcStr.Count > 1 then
                    xmmc21.Caption := _xmmcStr.Strings[1];
                  if _xmmcStr.Count > 2 then
                    xmmc32.Caption := _xmmcStr.Strings[2];

                  if Trim(Qry_print1.FieldByName('sgys').AsString) = '' then
                    QRLabel16.Caption := ''
                  else
                    QRLabel16.Caption := '试管颜色:' + Trim(Qry_print1.FieldByName('sgys').AsString);

                  //------------------------------------------------------

                  brcd1.BarCode := mysz[ii];
                  brcd1.Draw(QRImage4.Canvas, 0, 1, 35, 90);

                  QRLabel24.Enabled := False;
                  tmh_6.Enabled := False;
                  QRImage4.Enabled := true;
                  yzbz_6.Enabled := true;

                  proc_getjysqd(mysz[ii]);
                  if v_IsPrinterJoin = True then
                  begin
                    if QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                    begin
                      QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                    end;
                  end;

                  QuickRep6.Print;
                end        //遂宁中医院处理结束
               else
                begin

                    Getxmmc := trim( Qry_print1.FieldByname( 'xmmc' ).AsString );
                    getybmc := trim( Qry_print1.FieldByname( 'yb' ).AsString );
                    if Pos( '急', trim( Qry_print1.FieldByname( 'yzbz' ).AsString ) ) > 0 then
                    begin
                      yzbz.Caption := '急';
                      Vyzbz.Caption := '急';
                      t_yzbz.Caption := '急';
                    end
                    else
                    begin
                      yzbz.Caption := '';
                      Vyzbz.Caption := '';
                      t_yzbz.Caption := '';
                    end;

                    //-----------calmhawk-----------------------------------
                    _xmmcStr := TStringList.Create;
                    _xmmcStr.Delimiter := ' ';
                    _xmmcStr.DelimitedText := Getxmmc;
                    if (pub_yydm = '0263') or (pub_yydm = '0264') then
                    begin
                      Vxmmc1.Caption := '';
                      Vxmmc2.Caption := '';
                      Vxmmc3.Caption := '';
                      _xmmcStr.Delimiter := ',';
                      _xmmcStr.DelimitedText := StringReplace(Getxmmc,' ','',[rfReplaceAll]);
                      for n := 0 to _xmmcStr.Count - 1 do
                      begin
                        if HowManycharacter(Copy(_xmmcStr.Strings[n],1,6)) mod 2 = 0 then
                          V1[n] := 6
                        else
                          V1[n] := 7;
                      end;

                      for n := 0 to _xmmcStr.Count - 1 do
                      begin
                        if (_xmmcStr.Count > 0) and (_xmmcStr.Count <= 3) then
                        begin
                          Vtemp := Copy(_xmmcStr.Strings[n],1,V1[n]);
                          if Vxmmc1.Caption = '' then
                            Vxmmc1.Caption := Vtemp
                          else
                            Vxmmc1.Caption := Vxmmc1.Caption + ',' + Vtemp;
                          Continue;
                        end;
                        if (_xmmcStr.Count > 3) and (_xmmcStr.Count <= 6) then
                        begin
                          if n = 3 then
                            Break;
                          Vtemp := Copy(_xmmcStr.Strings[n],1,V1[n]);
                          if Vxmmc1.Caption = '' then
                            Vxmmc1.Caption := Vtemp
                          else
                            Vxmmc1.Caption := Vxmmc1.Caption + ',' + Vtemp;
                          if n + 3 >= _xmmcStr.Count then
                            Continue;
                          Vtemp := Copy(_xmmcStr.Strings[n+3],1,V1[n+3]);
                          if Vxmmc2.Caption = '' then
                            Vxmmc2.Caption := Vtemp
                          else
                            Vxmmc2.Caption := Vxmmc2.Caption + ',' + Vtemp;
                          Continue;
                        end;
                        if (_xmmcStr.Count > 6) and (_xmmcStr.Count <= 9) then
                        begin
                          if n = 3 then
                            Break;
                          Vtemp := Copy(_xmmcStr.Strings[n],1,V1[n]);
                          if Vxmmc1.Caption = '' then
                            Vxmmc1.Caption := Vtemp
                          else
                            Vxmmc1.Caption := Vxmmc1.Caption + ',' + Vtemp;
                          Vtemp := Copy(_xmmcStr.Strings[n+3],1,V1[n+3]);
                          if Vxmmc2.Caption = '' then
                            Vxmmc2.Caption := Vtemp
                          else
                            Vxmmc2.Caption := Vxmmc2.Caption + ',' + Vtemp;
                          if n + 6 >= _xmmcStr.Count then
                            Continue;
                          Vtemp := Copy(_xmmcStr.Strings[n+6],1,V1[n+6]);
                          if Vxmmc3.Caption = '' then
                            Vxmmc3.Caption := Vtemp
                          else
                            Vxmmc3.Caption := Vxmmc3.Caption + ',' + Vtemp;
                          Continue;
                        end;
                      end;
                    end
                    else if pub_yydm = '0266' then
                    begin
                      g_xmmc1.Caption := '';
                      g_xmmc2.Caption := '';
                      g_xmmc3.Caption := '';
                      QRLabel27.Enabled := False;
                      if _xmmcStr.Count > 0 then
                      g_xmmc1.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count > 1 then
                      g_xmmc2.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count > 2 then
                      g_xmmc3.Caption := _xmmcStr.Strings[2];
                    end
                    else if pub_yydm = '0269' then
                    begin
                      t_xmmc1.Caption := '';
                      t_xmmc2.Caption := '';
                      t_xmmc3.Caption := '';
                      QRLabel29.Enabled := False;
                      if _xmmcStr.Count > 0 then
                        t_xmmc1.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count > 1 then
                        t_xmmc2.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count > 2 then
                        t_xmmc3.Caption := _xmmcStr.Strings[2];
                    end
                    else
                    begin
                      xmmc1.Caption := '';
                      xmmc2.Caption := '';
                      xmmc3.Caption := '';
                      if _xmmcStr.Count > 0 then
                      begin
                        xmmc1.Caption := _xmmcStr.Strings[0];
                      end;
                      if _xmmcStr.Count > 1 then
                      begin
                        xmmc2.Caption := _xmmcStr.Strings[1];
                      end;
                      if _xmmcStr.Count > 2 then
                      begin
                        xmmc3.Caption := _xmmcStr.Strings[2];
                      end;
                    end;



                    if Trim(Qry_print1.FieldByName('sgys').AsString) = '' then
                    begin
                      QRLabel14.Caption := '';
                      g_sgys.Caption := '';
                    end
                    else
                    begin
                      QRLabel14.Caption := '试管颜色:' + Trim(Qry_print1.FieldByName('sgys').AsString);
                      g_sgys.Caption := '试管颜色:' + Trim(Qry_print1.FieldByName('sgys').AsString);
                    end;



                    //------------------------------------------------------
                    //HSBarCodeImage1.BarCode := mysz[ii];
          //          QRImage3.Height := HSBarCodeImage1.Height;
          //          QRImage3.width := HSBarCodeImage1.width;
          //          QRImage3.Picture := HSBarCodeImage1.Picture;
                    brcd1.BarCode:=mysz[ii];
                    brcd1.Draw(QRImage3.Canvas,4,0,35,0);
                    brcd1.Draw(QRImage5.Canvas,4,0,35,0);
                    brcd1.Draw(QRImage6.Canvas,4,0,35,0);
                    brcd1.Draw(QRImage7.Canvas, 4, 0, 42, 0); //台山医院
                    if pub_yydm='0246' then
                    begin
                      QuickRep3.Page.Width := 52;
                      QuickRep3.Page.Length := 31;

                      QRDBText2.SendToBack;
                      QRDBText2.Width := 100;
                      QRDBText11.Left := 100;
                      QRDBText20.left := 166;
                    end;

                    if pub_yydm='0182' then
                    begin
                      QRLabel2.Enabled:=True;
                      QRDBText4.Enabled:=True;
                      QRImage3.Enabled:=False;
                      yzbz.Enabled:=false;
                    end
                    else
                    begin
                      QRLabel2.Enabled:=False;
                 //     QRDBText4.Enabled:=False;
                      QRImage3.Enabled:=true;
                      yzbz.Enabled:=true;
                    end;
                    //QRLabel1.Caption:=pub_ksmc;
                    //quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
                    if (pub_yydm = '0263') or (pub_yydm = '0264') then//德阳肿瘤医院
                    begin
                      if v_IsPrinterJoin = True then
                      begin
                      if QuickRep_dyzlyy.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                      begin
                        QuickRep_dyzlyy.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                      end;
                      end;
                      QuickRep_dyzlyy.print;
                    end
                    else if pub_yydm = '0266' then    //广元召化医院
                    begin
                      if v_IsPrinterJoin = True then
                      begin
                      if gyzhyy.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                      begin
                        gyzhyy.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                      end;
                      end;
                      gyzhyy.print;
                    end
                    else if pub_yydm = '0269' then
                    begin
                      if v_IsPrinterJoin = True then
                      begin
                      if QuickRep_tsyy.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                      begin
                        QuickRep_tsyy.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                      end;
                      end;
                      QuickRep_tsyy.print;
                    end
                    else
                    begin
                      if v_IsPrinterJoin = True then
                      begin
                        if QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                        begin
                          QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                        end;
                      end;
                      QuickRep3.print;
                    end;

//                    if v_IsPrinterJoin=true then
//                    begin
//                      if  QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
//                      begin
//                        QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
//                      end;
//                    end;
//                    QuickRep3.print;

                end;
            end
            else
                if pub_yydm='0003' then
                  begin
                    Getxmmc := trim( Qry_print1.FieldByname( 'xmmc' ).AsString );
                    getybmc := trim( Qry_print1.FieldByname( 'yb' ).AsString );
                    Getsgys  := trim( Qry_print1.FieldByname( 'sgys' ).AsString );
                    sgys_1.Caption:=Getsgys;
                    DM_data.qry_pub.Close;
                    DM_data.qry_pub.SQL.Text:='select * from DZBL_CYJL_zy  where jyfzbh='+''''+
                    mysz[ii]+''''+' and substring(dldm,1,6)=''010111''';
                    DM_data.qry_pub.Open;
                    if not DM_data.qry_pub.IsEmpty then
                    begin
                      qk.Caption := '急';
                      jjqk.Caption:= '急';
                    end else begin
                      qk.Caption := '';
                      jjqk.Caption := '';
                    end;
                    //-----------calmhawk-----------------------------------
                    _xmmcStr := TStringList.Create;
                    _xmmcStr.Delimiter := ' ';
                    _xmmcStr.DelimitedText := Getxmmc;
                    if _xmmcStr.Count<4 then
                    begin
                      xmmc11.Caption := '';
                      xmmc22.Caption := '';
                      xmmc33.Caption := '';
                      xmmc111.Caption := '';
                      xmmc222.Caption := '';
                      xmmc333.Caption := '';
                      if _xmmcStr.Count > 0 then
                        xmmc11.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count > 1 then
                        xmmc22.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count > 2 then
                        xmmc33.Caption := _xmmcStr.Strings[2];
                      if _xmmcStr.Count > 0 then
                        xmmc111.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count > 1 then
                        xmmc222.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count > 2 then
                        xmmc333.Caption := _xmmcStr.Strings[2];
                      //------------------------------------------------------
                      //HSBarCodeImage1.BarCode := mysz[ii];
            //          QRImage3.Height := HSBarCodeImage1.Height;
            //          QRImage3.width := HSBarCodeImage1.width;
            //          QRImage3.Picture := HSBarCodeImage1.Picture;
                      brcd1.BarCode:=mysz[ii];
                      QRLabel20.Caption:=  mysz[ii];
                      QRLabel18.Caption:= trim( Qry_print1.FieldByname( 'tmh' ).AsString );
                      brcd1.Draw(QRImage2.Canvas,4,0,35,0);

                        QRImage2.Enabled:=true;
                        qk.Enabled:=true;
                      //QRLabel1.Caption:=pub_ksmc;
                      //quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
                      if v_IsPrinterJoin=true then
                      begin
                        if  QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                        begin
                          QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                        end;
                      end;

                      //病人姓名长于4字体设置小两号
                      if Length(QRDBText16.DataSet.FieldByName('brxm').AsString)>=4 then

                       begin
                         QRDBText16.Font.Size:=6;
                       end;

                      QuickRep4.print;
                      QuickRep4.print;
                    end
                    else   //三医院xmmcstr count>=4处理
                    begin
                      xmmc11.Caption := '';
                      xmmc22.Caption := '';
                      xmmc33.Caption := '';
                      xmmc111.Caption := '';
                      xmmc222.Caption := '';
                      xmmc333.Caption := '';
                      if _xmmcStr.Count > 0 then
                        xmmc11.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count > 1 then
                        xmmc22.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count > 2 then
                        xmmc33.Caption := _xmmcStr.Strings[2];
                      if _xmmcStr.Count>3 then
                      xmmc33.Caption := Copy(_xmmcStr.Strings[2],1,ReversePos(',',_xmmcStr.Strings[2])-1);
                      if _xmmcStr.Count > 0 then
                        xmmc111.Caption := _xmmcStr.Strings[0];
                      if _xmmcStr.Count > 1 then
                        xmmc222.Caption := _xmmcStr.Strings[1];
                      if _xmmcStr.Count > 2 then
                        xmmc333.Caption := _xmmcStr.Strings[2];
                      //------------------------------------------------------
                      //HSBarCodeImage1.BarCode := mysz[ii];
            //          QRImage3.Height := HSBarCodeImage1.Height;
            //          QRImage3.width := HSBarCodeImage1.width;
            //          QRImage3.Picture := HSBarCodeImage1.Picture;
                      brcd1.BarCode:=mysz[ii];
                      QRLabel20.Caption:=  mysz[ii];
                      QRLabel18.Caption:= trim( Qry_print1.FieldByname( 'tmh' ).AsString );
                      brcd1.Draw(QRImage2.Canvas,4,0,35,0);

                        QRImage2.Enabled:=true;
                        qk.Enabled:=true;
                      //QRLabel1.Caption:=pub_ksmc;
                      //quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
                      if v_IsPrinterJoin=true then
                      begin
                        if  QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                        begin
                          QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                        end;
                      end;

                      //病人姓名长于4字体设置小两号
                      if Length(QRDBText16.DataSet.FieldByName('brxm').AsString)>=4 then

                       begin
                         QRDBText16.Font.Size:=6;
                       end;

                      QuickRep4.print;
                      QuickRep4.print;

                      xmmc11.Caption := '';
                      xmmc22.Caption := '';
                      xmmc33.Caption := '';
                      xmmc111.Caption := '';
                      xmmc222.Caption := '';
                      xmmc333.Caption := '';
                      if _xmmcStr.Count>3 then
                      begin
                        xmmc11.Caption := Copy(_xmmcStr.Strings[2],ReversePos(',',_xmmcStr.Strings[2])+1);
                        xmmc22.Caption := _xmmcStr.Strings[3];
                      end;
                      if _xmmcStr.Count>4 then
                      xmmc33.Caption := _xmmcStr.Strings[4];

                      //------------------------------------------------------
                      //HSBarCodeImage1.BarCode := mysz[ii];
            //          QRImage3.Height := HSBarCodeImage1.Height;
            //          QRImage3.width := HSBarCodeImage1.width;
            //          QRImage3.Picture := HSBarCodeImage1.Picture;
                      brcd1.BarCode:=mysz[ii];
                      QRLabel20.Caption:=  mysz[ii];
                      QRLabel18.Caption:= trim( Qry_print1.FieldByname( 'tmh' ).AsString );
                      brcd1.Draw(QRImage2.Canvas,4,0,35,0);

                        QRImage2.Enabled:=true;
                        qk.Enabled:=true;
                      //QRLabel1.Caption:=pub_ksmc;
                      //quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
                      if v_IsPrinterJoin=true then
                      begin
                        if  QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                        begin
                          QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                        end;
                      end;

                      //病人姓名长于4字体设置小两号
                      if Length(QRDBText16.DataSet.FieldByName('brxm').AsString)>=4 then

                       begin
                         QRDBText16.Font.Size:=6;
                       end;

                      QuickRep4.print;
                      QuickRep4.print;

                    end;
                    //QuickRep5.Print;
                  end;
          end;

        end;
      end;
    end;
  end
  else
  begin
    dll_1 := LoadLibrary('scsx_tmdy.dll'); //动态载入DLL，并返回其句柄
    try
      if dll_1 <> 0 then //如果载入成功则获取ShowCalendar函数的地址
      @tmdy := GetProcAddress(dll_1, 'tmdy');
      if not (@tmdy = nil) then
      begin
        if qry_brxx.Active and ( qry_brxx.RecordCount > 0 ) then
        begin
          qry_brxx.First;
          ii := 0;
          Setlength( mysz, qry_brxx.RecordCount );
          Setlength( xmmcsz, qry_brxx.RecordCount );
          while not qry_brxx.Eof do
          begin
           if pub_yydm='0020' then
           begin
             if not qry_ydy.Locate('barcode',qry_brxx.FieldByName('jyfzbh').AsString,[]) then
             begin
               if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
               begin
                 mysz[ii] := trim( qry_brxx.fieldByName( 'jyfzbh' ).AsString );
                 xmmcsz[ii] := trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
                 jyxmmclj := jyxmmclj + ',' + trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
                 Inc( ii, 1 );
               end;
             end
             else
             begin
               if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
               begin
                 application.MessageBox('该条码号已通过LIS审核,无法重打','注意',16);
               end;
             end;
           end
           else
           begin
             if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
             begin
               mysz[ii] := trim( qry_brxx.fieldByName( 'jyfzbh' ).AsString );
               xmmcsz[ii] := trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
               jyxmmclj := jyxmmclj + ',' + trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
               Inc( ii, 1 );
             end;
           end;
            qry_brxx.Next;
          end;
          Printcs := ii - 1;
          //qry_brxx.First;
          with frm_jydtmdy do
          begin
            //winexec('regedit.exe /s REG2_1.reg', sw_hide);
            for ii := 0 to Printcs do
            begin
              sfdybz := '1';
              if ii <> 0 then
              begin
                for jj := 0 to ii - 1 do
                begin
                  if ( trim( mysz[ii] ) = mysz[jj] ) then
                    sfdybz := '0';
                end;
              end;
              if sfdybz <> '0' then
              begin
                Qry_print1.close;
                Qry_print1.Parameters.ParamByName( 'fzbh' ).Value := mysz[ii];
                Qry_print1.Parameters.ParamByName( 'lb' ).Value := '2';
                Qry_print1.Parameters.ParamByName( 'srrq' ).Value := dtp_zxsj.DateTime;
                Qry_print1.Parameters.ParamByName( 'jyxmmc' ).Value := jyxmmclj;
                Qry_print1.Open;
                Getxmmc := trim( Qry_print1.FieldByname( 'xmmc' ).AsString );
                getybmc := trim( Qry_print1.FieldByname( 'yb' ).AsString );
                if Pos( '急', trim( Qry_print1.FieldByname( 'yzbz' ).AsString ) ) > 0 then begin
                  yzbz_1 := '急';
                end else begin
                  yzbz_1 := '';
                end;
                //-----------calmhawk-----------------------------------
                _xmmcStr := TStringList.Create;
                _xmmcStr.Delimiter := ' ';
                _xmmcStr.DelimitedText := Getxmmc;
                xmmc_1 := '';
                xmmc_2 := '';
                xmmc_3 := '';
                if _xmmcStr.Count > 0 then
                  xmmc_1 := _xmmcStr.Strings[0];
                if _xmmcStr.Count > 1 then
                  xmmc_2 := _xmmcStr.Strings[1];
                if _xmmcStr.Count > 2 then
                  xmmc_3 := _xmmcStr.Strings[2];
                //------------------------------------------------------
                //HSBarCodeImage1.BarCode := mysz[ii];
      //          QRImage3.Height := HSBarCodeImage1.Height;
      //          QRImage3.width := HSBarCodeImage1.width;
      //          QRImage3.Picture := HSBarCodeImage1.Picture;
                bm_1:=mysz[ii];

                //QRLabel1.Caption:=pub_ksmc;
                //quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
                xb_1:=Trim(Qry_print1.FieldByName('brxb').AsString);
                xm_1:=Trim(Qry_print1.FieldByName('brxm').AsString);
                kscw_1:=Trim(Qry_print1.FieldByName('ksch').AsString);
                nl_1:= Trim(Qry_print1.FieldByName('brnl').AsString);
                bz_1:='';
                cysj_1:=Trim(Qry_print1.FieldByName('cysj').AsString);
                yb_1:= Trim(Qry_print1.FieldByName('yb').AsString);
                dyjmc_1:=Printer.Printers[v_PrinterIndex_new];
                tmdy(AnsiString(bm_1),AnsiString(xb_1),AnsiString(kscw_1),AnsiString(xm_1),
                AnsiString(nl_1),AnsiString(bz_1),AnsiString(cysj_1),AnsiString(yb_1),AnsiString(xmmc_1),
                AnsiString(xmmc_2),AnsiString(xmmc_3),AnsiString(yzbz_1),dyjmc_1);
              end;
              //qry_brxx.Next;
            end;
          end;
        end;
      end
      else
        RaiseLastWin32Error;
    finally
      FreeLibrary(dll_1);
    end;
  end;
  //RevertPrinter;
end;


procedure Tfrm_jytmcd.tmdy_dz;
var
  tmdy:function(bm,xb,kscw,xm,nl,bz,cysj,yb,xmmc1,xmmc2,xmmc3,yzbz,dyjmc_1:AnsiString):boolean;stdcall;
  ma: string;
  ii, Printcs, jj: integer;
  mysz, xmmcsz: array of string;
  Getxmmc, lb, Getybmc: string;
  jyxmmclj: string;
  sfdybz: string;
  _xmmcStr: TStrings;
  dll_1:Cardinal;
  yzbz_1,xmmc_1,xmmc_2,xmmc_3,xb_1,nl_1,xm_1,kscw_1,bm_1,bz_1,cysj_1,yb_1,dyjmc_1:string;
begin
  qry_ydy.Close;
  qry_ydy.Open;
  if pub_yydm='0271' then
  begin
    ChangePrinter(8);
  end else
  begin
    ChangePrinter(3);
  end;;
  jyxmmclj := '';
  if pub_yydm<>'0013' then
  begin
    if qry_brxx.Active and ( qry_brxx.RecordCount > 0 ) then
    begin
      qry_brxx.First;
      ii := 0;
      Setlength( mysz, qry_brxx.RecordCount );
      Setlength( xmmcsz, qry_brxx.RecordCount );
      while not qry_brxx.Eof do
      begin
       if pub_yydm='0020' then
       begin
         if not qry_ydy.Locate('barcode',qry_brxx.FieldByName('jyfzbh').AsString,[]) then
         begin
           if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
           begin
             mysz[ii] := trim( qry_brxx.fieldByName( 'jyfzbh' ).AsString );
             xmmcsz[ii] := trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
             jyxmmclj := jyxmmclj + ',' + trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
             Inc( ii, 1 );
           end;
         end
         else
         begin
           if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
           begin
             application.MessageBox('该条码号已通过LIS审核,无法重打','注意',16);
           end;
         end;
       end
       else
       begin
         if qry_brxx.FieldByName( 'sfcd' ).AsBoolean then
         begin
           mysz[ii] := trim( qry_brxx.fieldByName( 'jyfzbh' ).AsString );
           xmmcsz[ii] := trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
           jyxmmclj := jyxmmclj + ',' + trim( qry_brxx.fieldByName( 'jyxmmc' ).AsString );
           Inc( ii, 1 );
         end;
       end;
        qry_brxx.Next;
      end;
      Printcs := ii - 1;
      //qry_brxx.First;
      with frm_jydtmdy do
      begin
        //winexec('regedit.exe /s REG2_1.reg', sw_hide);
        for ii := 0 to Printcs do
        begin
          sfdybz := '1';
          if ii <> 0 then
          begin
            for jj := 0 to ii - 1 do
            begin
              if ( trim( mysz[ii] ) = mysz[jj] ) then
                sfdybz := '0';
            end;
          end;
          if sfdybz <> '0' then
          begin
            Qry_print1.close;
            Qry_print1.Parameters.ParamByName( 'fzbh' ).Value := mysz[ii];
            Qry_print1.Parameters.ParamByName( 'lb' ).Value := '2';
            Qry_print1.Parameters.ParamByName( 'srrq' ).Value := dtp_zxsj.DateTime;
            Qry_print1.Parameters.ParamByName( 'jyxmmc' ).Value := jyxmmclj;
            Qry_print1.Open;
            Getxmmc := trim( Qry_print1.FieldByname( 'xmmc' ).AsString );
            getybmc := trim( Qry_print1.FieldByname( 'yb' ).AsString );
            if Pos( '急', trim( Qry_print1.FieldByname( 'yzbz' ).AsString ) ) > 0 then begin
              QRLabel3.Caption := '急';
            end else begin
              QRLabel3.Caption := '';
            end;
            //-----------calmhawk-----------------------------------
            _xmmcStr := TStringList.Create;
            _xmmcStr.Delimiter := ' ';
            _xmmcStr.DelimitedText := Getxmmc;
            xmmc_1s.Caption := '';
            xmmc_2s.Caption := '';
            xmmc_3s.Caption := '';
            if _xmmcStr.Count > 0 then
              xmmc_1s.Caption := _xmmcStr.Strings[0];
            if _xmmcStr.Count > 1 then
              xmmc_2s.Caption := _xmmcStr.Strings[1];
            if _xmmcStr.Count > 2 then
              xmmc_3s.Caption := _xmmcStr.Strings[2];
            //------------------------------------------------------
            //HSBarCodeImage1.BarCode := mysz[ii];
  //          QRImage3.Height := HSBarCodeImage1.Height;
  //          QRImage3.width := HSBarCodeImage1.width;
  //          QRImage3.Picture := HSBarCodeImage1.Picture;
            brcd1.BarCode:=mysz[ii];
            brcd1.Draw(QRImage1.Canvas,15,0,55,0);

            QRLabel8.Enabled:=False;
            QRDBText13.Enabled:=False;
            QRImage1.Enabled:=true;
            QRLabel3.Enabled:=true;
            //QRLabel1.Caption:=pub_ksmc;
            //quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
            if v_IsPrinterJoin=True then
            if  QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text:='select b.sgys from DZBL_CYJL_zy a,sys_yzxm b where jyfzbh='+''''+
            mysz[ii]+''''+' and a.jyxmdm=b.xmdm';
            DM_data.qry_pub.Open;
            if Trim(DM_data.qry_pub.FieldByName('sgys').AsString)='' then
              QRLabel5.Caption:= ''
            else
              QRLabel5.Caption:= '试管颜色:'+Trim(DM_data.qry_pub.FieldByName('sgys').AsString);
            QuickRep1.print;
          end;
          //qry_brxx.Next;
        end;
      end;
    end;
  end;

  //RevertPrinter;
end;

procedure Tfrm_jytmcd.Button1Click( Sender: TObject );
begin
  Close;
  frm_jydtmdy.e_tmh.SelectAll;
  frm_jydtmdy.e_tmh.SetFocus;
end;

procedure Tfrm_jytmcd.FormShow( Sender: TObject );
var
 vTempStr: string;
begin
  qry_brxx.Close;
//  Qry_brxx.SQL.Text := 'select a.*,b.brxm brxm1,b.brnl brnl1,b.brxb brxb1 from DZBL_CYJL_zy a,zysf_zydj b,dzbl_jysqd c where a.zyh=b.zyh and a.zyh=c.zyh and a.jyfzbh=c.fzbh and  a.zyh=' + #39 + cd_zyh + #39 +
//  ' and c.jsbz=0 order by a.yb asc';
//  qry_brxx.SQL.Text := 'select t.*,e.mc cdry,d.cdrq from'+
//   ' ( select a.*,b.brxm brxm1,b.brnl brnl1,b.brxb brxb1 from DZBL_CYJL_zy a,zysf_zydj b,dzbl_jysqd c where a.zyh=b.zyh and a.zyh=c.zyh and a.jyfzbh=c.fzbh and a.zyh=' + #39 + cd_zyh + #39 +'  and c.jsbz=0 ) t'+
//   ' left join ( select* from zybl_jycdjl where id in(select max(id) id from zybl_jycdjl group by jyfzbh,jyxmmc,tmh) ) d on t.tmh=  d.tmh and t.jyxmmc=d.jyxmmc and t.jyfzbh=d.jyfzbh ' +
//   ' left join sys_czy e on d.cdry=e.dm  order by t.yb asc';

  vTempStr :='if object_id(''tempdb..#t1'') is not null'+
  ' drop table #t1 '+ 'select a.*,b.brxm brxm1,b.brnl brnl1,b.brxb brxb1 into #t1 from DZBL_CYJL_zy a,zysf_zydj b,dzbl_jysqd c where a.zyh=b.zyh and a.zyh=c.zyh and a.jyfzbh=c.fzbh and a.zyh='+ #39 + cd_zyh + #39 + ' and c.jsbz=0'+
  ' if object_id(''tempdb..#t2'') is not null'+
  ' drop table #t2 '+ 'select* into #t2 from zybl_jycdjl where id in(select max(id) id from zybl_jycdjl group by jyfzbh,jyxmmc,tmh)'+
  ' select t.*,e.mc cdry,d.cdrq ' +
  ' from #t1 t ' +
  ' left join #t2 d ' +
  ' on t.tmh=  d.tmh and t.jyxmmc=d.jyxmmc and t.jyfzbh=d.jyfzbh  left join sys_czy e on d.cdry=e.dm  order by t.yb asc';

  qry_brxx.SQL.Text := vTempStr;
  Qry_brxx.Open;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  sfqyydhsz:= DM_data.qry_pub.FieldByName('sfqyydhsz').AsBoolean;
end;

procedure Tfrm_jytmcd.ChangePrinter(_index: Integer);
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex( _index, v_IsPrinterJoin );
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;
end;

procedure Tfrm_jytmcd.ChangePrinter_syy;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex( 7, v_IsPrinterJoin );
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;
end;

procedure Tfrm_jytmcd.RevertPrinter;
begin
  //还原原来默认打印机
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter( v_PrinterIndex_old, True );
  except
  end;
end;

end.

