unit p_zxdxd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DB, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrm_zxdxd = class( TForm )
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ds_yzxd: TDataSource;
    QuickRep6: TQuickRep;
    QRBand11: TQRBand;
    QRLabel59: TQRLabel;
    QRBand12: TQRBand;
    QRShape173: TQRShape;
    QRLabeljy2: TQRLabel;
    QRLabeljy3: TQRLabel;
    QRLabeljy7: TQRLabel;
    QRLabeljy18: TQRLabel;
    QRLabeljy19: TQRLabel;
    QRShape196: TQRShape;
    QRShape199: TQRShape;
    QRShape200: TQRShape;
    QRLabeljy20: TQRLabel;
    QRLabeljy21: TQRLabel;
    QRLabeljy26: TQRLabel;
    nyjy: TQRLabel;
    QRShape201: TQRShape;
    QRLabeljy28: TQRLabel;
    QRLabeljy29: TQRLabel;
    QRLabeljy30: TQRLabel;
    QRShape202: TQRShape;
    DetailBand2: TQRBand;
    QRShape204: TQRShape;
    QRShape205: TQRShape;
    QRShape206: TQRShape;
    QRShape207: TQRShape;
    QRShape208: TQRShape;
    QRShape209: TQRShape;
    QRShape210: TQRShape;
    QRShape211: TQRShape;
    QRShape212: TQRShape;
    QRShape213: TQRShape;
    QRShape214: TQRShape;
    QRShape215: TQRShape;
    QRShape216: TQRShape;
    QRShape217: TQRShape;
    QRShape218: TQRShape;
    QRShape219: TQRShape;
    QRShape220: TQRShape;
    QRShape221: TQRShape;
    QRShape222: TQRShape;
    QRShape223: TQRShape;
    QRShape224: TQRShape;
    QRShape225: TQRShape;
    QRShape226: TQRShape;
    QRShape227: TQRShape;
    QRShape228: TQRShape;
    QRShape229: TQRShape;
    QRShape230: TQRShape;
    QRShape231: TQRShape;
    QRShape232: TQRShape;
    QRShape233: TQRShape;
    QRShape234: TQRShape;
    QRShape235: TQRShape;
    QRShape236: TQRShape;
    QRShape237: TQRShape;
    QRShape238: TQRShape;
    QRShape239: TQRShape;
    QRShape240: TQRShape;
    QRShape241: TQRShape;
    QRShape242: TQRShape;
    QRShape243: TQRShape;
    QRShape244: TQRShape;
    QRShape245: TQRShape;
    kdysmcjy1: TQRLabel;
    ypyfjy1: TQRLabel;
    QRgrImagejy2: TQRImage;
    xmmcjy1: TQRLabel;
    ksrqjy2: TQRLabel;
    kdysmcjy2: TQRLabel;
    xmmcjy2: TQRLabel;
    QRgrImagejy3: TQRImage;
    ypyfjy2: TQRLabel;
    ksrqjy3: TQRLabel;
    kdysmcjy3: TQRLabel;
    xmmcjy3: TQRLabel;
    QRgrImagejy4: TQRImage;
    ypyfjy3: TQRLabel;
    ksrqjy4: TQRLabel;
    kdysmcjy4: TQRLabel;
    xmmcjy4: TQRLabel;
    QRgrImagejy5: TQRImage;
    ypyfjy4: TQRLabel;
    ksrqjy5: TQRLabel;
    kdysmcjy5: TQRLabel;
    xmmcjy5: TQRLabel;
    QRgrImagejy6: TQRImage;
    ypyfjy5: TQRLabel;
    ksrqjy6: TQRLabel;
    kdysmcjy6: TQRLabel;
    xmmcjy6: TQRLabel;
    QRgrImagejy7: TQRImage;
    ypyfjy6: TQRLabel;
    ksrqjy7: TQRLabel;
    kdysmcjy7: TQRLabel;
    xmmcjy7: TQRLabel;
    QRgrImagejy8: TQRImage;
    ypyfjy7: TQRLabel;
    ksrqjy8: TQRLabel;
    kdysmcjy8: TQRLabel;
    xmmcjy8: TQRLabel;
    QRgrImagejy9: TQRImage;
    ypyfjy8: TQRLabel;
    kdysmcjy0: TQRLabel;
    ksrqjy0: TQRLabel;
    xmmcjy0: TQRLabel;
    ypyfjy0: TQRLabel;
    QRgrImagejy1: TQRImage;
    ksrqjy1: TQRLabel;
    QRShape246: TQRShape;
    QRLabeljy61: TQRLabel;
    QuickRep3: TQuickRep;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRBand4: TQRBand;
    QRShape15: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel26: TQRLabel;
    ny: TQRLabel;
    QRShape26: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape27: TQRShape;
    QRShape46: TQRShape;
    DetailBand1: TQRBand;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    kdysmc1: TQRLabel;
    ypyf1: TQRLabel;
    QRgrImage3: TQRImage;
    xmmc1: TQRLabel;
    ksrq2: TQRLabel;
    kdysmc2: TQRLabel;
    xmmc2: TQRLabel;
    QRgrImage4: TQRImage;
    ypyf2: TQRLabel;
    ksrq3: TQRLabel;
    kdysmc3: TQRLabel;
    xmmc3: TQRLabel;
    QRgrImage5: TQRImage;
    ypyf3: TQRLabel;
    ksrq4: TQRLabel;
    kdysmc4: TQRLabel;
    xmmc4: TQRLabel;
    ypyf4: TQRLabel;
    kdysmc0: TQRLabel;
    ksrq0: TQRLabel;
    xmmc0: TQRLabel;
    ypyf0: TQRLabel;
    QRgrImage1: TQRImage;
    ksrq1: TQRLabel;
    QRShape65: TQRShape;
    QRShape175: TQRShape;
    QRgrImage2: TQRImage;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRShape179: TQRShape;
    QRShape180: TQRShape;
    QRShape181: TQRShape;
    QRShape182: TQRShape;
    QRShape183: TQRShape;
    QRShape184: TQRShape;
    QRShape185: TQRShape;
    QRShape186: TQRShape;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRShape191: TQRShape;
    QRShape192: TQRShape;
    QRShape193: TQRShape;
    QRShape194: TQRShape;
    QRShape195: TQRShape;
    QRShape197: TQRShape;
    QRShape198: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel57: TQRLabel;
    Label3: TLabel;
    Button3: TButton;
    QuickRep5: TQuickRep;
    QRBand8: TQRBand;
    QRLabel44: TQRLabel;
    QRBand9: TQRBand;
    QRShape138: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape143: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRBand10: TQRBand;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRShape166: TQRShape;
    QRShape167: TQRShape;
    QRShape168: TQRShape;
    QRShape169: TQRShape;
    QRShape170: TQRShape;
    QRShape171: TQRShape;
    QRShape172: TQRShape;
    kdysmcls1: TQRLabel;
    ypyfls_1: TQRLabel;
    QRImagels_2: TQRImage;
    xmmcls_1: TQRLabel;
    ksrqls2: TQRLabel;
    kdysmcls2: TQRLabel;
    xmmcls_2: TQRLabel;
    QRImagels_3: TQRImage;
    ypyfls_2: TQRLabel;
    ksrqls3: TQRLabel;
    kdysmcls3: TQRLabel;
    xmmcls_3: TQRLabel;
    QRImagels_4: TQRImage;
    ypyfls_3: TQRLabel;
    ksrqls4: TQRLabel;
    kdysmcls4: TQRLabel;
    xmmcls_4: TQRLabel;
    QRImagels_5: TQRImage;
    ypyfls_4: TQRLabel;
    ksrqls5: TQRLabel;
    kdysmcls5: TQRLabel;
    xmmcls_5: TQRLabel;
    QRImagels_6: TQRImage;
    ypyfls_5: TQRLabel;
    ksrqls6: TQRLabel;
    kdysmcls6: TQRLabel;
    xmmcls_6: TQRLabel;
    QRImagels_7: TQRImage;
    ypyfls_6: TQRLabel;
    ksrqls7: TQRLabel;
    kdysmcls7: TQRLabel;
    xmmcls_7: TQRLabel;
    QRImagels_8: TQRImage;
    ypyfls_7: TQRLabel;
    ksrqls8: TQRLabel;
    kdysmcls8: TQRLabel;
    xmmcls_8: TQRLabel;
    QRImagels_9: TQRImage;
    ypyfls_8: TQRLabel;
    kdysmcls0: TQRLabel;
    ksrqls0: TQRLabel;
    xmmcls_0: TQRLabel;
    ypyfls_0: TQRLabel;
    QRImagels_1: TQRImage;
    ksrqls1: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    procedure Button2Click( Sender: TObject );
    procedure DBGridEh1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure Button1Click( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure Button3Click(Sender: TObject);
  private
    procedure pro_xd_a4;
    procedure pro_xd_b5;
    procedure pro_cqxd_a4;
    procedure pro_cqxd_b5;
    procedure pro_xd_b5_ls;
    procedure pro_cqxd_b5_ls;
    procedure pro_xd_b5_zs;
    procedure pro_xd_b5_zs_ls;
    procedure pro_xd_b5_zs_id;
    procedure pro_xd_b5_zs_ls_id;
    procedure pro_xd_b5_cqzl;
    procedure pro_xd_b5_lszl;
    procedure pro_xd_b5_cqzl_id;
    procedure pro_xd_b5_lszl_id;
    procedure pro_xd_b5_cqcfd;
    procedure pro_xd_b5_lscfd;
    procedure pro_xd_b5_cqcfd_id;
    procedure pro_xd_b5_lscfd_id;
    procedure pro_xd_a4_zs;
    procedure pro_xd_a4_zl;
    procedure pro_xd_a4_ls;
    procedure pro_xd_a4_zl_ls;
    procedure pro_xd_a4_zs_ls;
    procedure pro_cqxd_a4_id(m:integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zxdxd: Tfrm_zxdxd;
   kdrq : string;


  _mydyzs:integer; //calmhawk---每页打印组数---

implementation

uses p_dm, p_func, p_yzinput;

{$R *.dfm}

procedure Tfrm_zxdxd.Button1Click( Sender: TObject );
begin
   if frm_yzinput.sp_zxjl_cq_dy.Filter = 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' then
   begin
   if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
   begin
   pro_xd_b5_cqcfd;
   end
   else
   begin
   pro_xd_b5_lscfd;
   end;

   end
   else
   begin
   if _mydyzs=9 then
   begin
    if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入')  then
    pro_xd_b5
    else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
    pro_xd_b5_cqzl
    else
    pro_xd_b5_zs;
    end
    else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入') or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0)  then
    pro_xd_a4_ls
    else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
    pro_xd_b5_lszl
    else
    pro_xd_b5_zs_ls;
    end;
   end
   else
   begin
    if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入')  then
    pro_xd_a4
    else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
    pro_xd_a4_zl
    else
    pro_xd_a4_zs;
    end
    else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入') or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0)  then
    pro_xd_a4_ls
    else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
    pro_xd_a4_zl_ls
    else
    pro_xd_a4_zs_ls;
    end;
   end;
   end;
end;



procedure Tfrm_zxdxd.pro_xd_b5_lscfd_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :='id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_xd_b5_cqcfd_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :='id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;





procedure Tfrm_zxdxd.pro_xd_b5_lscfd;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_b5_cqcfd;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_b5_lszl_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''''+' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_xd_b5_cqzl_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_xd_b5_lszl;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''''+' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;




procedure Tfrm_zxdxd.pro_xd_b5_cqzl;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_a4;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and ksrq>='+''''+kdrq+''''+' and kdks='+''''+pub_ksdm+''')'
     +' or (yytj=''静脉泵入'' and  tzrq=null and ksrq>='+''''
     +kdrq+''''+' and kdks='+''''+pub_ksdm+''')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;  
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;  
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      
      QRLabel2.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and kdks='+''''+pub_ksdm+''')'+' or (yytj=''静脉泵入'' and  tzrq=null and kdks='+''''+pub_ksdm+''')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;








procedure Tfrm_zxdxd.pro_xd_b5_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') or'+
                          ' (yytj=''静脉泵入'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') or '+
                          ' (xmmc like ''%皮试%'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;




procedure Tfrm_zxdxd.pro_xd_b5_zs_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';

  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_b5_zs_ls_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter:=' id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';

  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_cqxd_b5_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'yytj like ''%静滴%'' and  id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') or'+
                          ' (yytj=''静脉泵入'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') or '+
                          ' (xmmc like ''%皮试%'' and kdks='+''''+pub_ksdm+''''+' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;







//--------------calmhawk---2011-06-12----------

procedure Tfrm_zxdxd.pro_xd_b5;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；

begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and ksrq>=' +
    '''' + kdrq + '''' + ' and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''静脉泵入'' and  tzrq=null and ksrq>=' + '''' + kdrq +
    '''' + ' and kdks=' + '''' + pub_ksdm + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;
     _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=False;
        QRLabel5.Enabled:=False;
        QRLabel6.Enabled:=False;
        QRShape1.Enabled := false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;

        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        QRLabeljy2.Caption := pub_yymc + '长期输液计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        QuickRep6.Preview;
      end;
    end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and kdks='+''''+pub_ksdm+''')'+' or (yytj=''静脉泵入'' and  tzrq=null and kdks='+''''+pub_ksdm+''')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
end;



procedure Tfrm_zxdxd.pro_xd_b5_zs;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；

begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''静注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''皮下'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''穴注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;
     _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=false;
        QRLabel5.Enabled:=false;
        QRLabel6.Enabled:=false;
        QRShape1.Enabled := false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;

        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        QRLabeljy2.Caption := pub_yymc + '长期注射计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+'卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );

        QuickRep6.Preview;
      end;
    end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered:=False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''静注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''皮下'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''穴注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
end;



procedure Tfrm_zxdxd.pro_xd_b5_zs_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；
  yzid:string;

begin
  yzid := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'id' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := ' id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;
     _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=false;
        QRLabel5.Enabled:=false;
        QRLabel6.Enabled:=false;
        QRShape1.Enabled := false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;

        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        QRLabeljy2.Caption := pub_yymc + '长期注射计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );

        QuickRep6.Preview;
      end;
    end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered:=False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''静注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''皮下'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''穴注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
end;



procedure Tfrm_zxdxd.Button2Click( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_zxdxd.Button3Click(Sender: TObject);
begin

   if frm_yzinput.sp_zxjl_cq_dy.Filter = 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' then
   begin
   if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
   begin
   pro_xd_b5_cqcfd_id;
   end
   else
   begin
   pro_xd_b5_lscfd_id;
   end;

   end
   else
   begin
   if _mydyzs=9 then
   begin
    if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入')  then
    pro_cqxd_b5
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
    pro_xd_b5_cqzl_id
    else
    pro_xd_b5_zs_id;
    end
    else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入') or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0)  then
    pro_cqxd_b5_ls
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
    pro_xd_b5_lszl_id
    else
    pro_xd_b5_zs_ls_id;
    end;
   end
   else
   begin
    if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入')  then
    pro_cqxd_a4_id(1)
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
    pro_cqxd_a4_id(2)
    else
    pro_cqxd_a4_id(3);
    end
    else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
    begin
    if (Pos('静滴',frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring)>0) or
       (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring='静脉泵入') or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0)  then
    pro_cqxd_a4_id(4)
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
    pro_cqxd_a4_id(5)
    else
    pro_cqxd_a4_id(6);
    end;
   end;
   end;



   

end;



procedure Tfrm_zxdxd.DBGridEh1DrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
begin
  //   DBGridEh1.DefaultDrawColumnCell( Rect, DataCol, Column, [gdFixed,gdFocused,gdSelected] );
  if ( Rect.Top = DBGridEh1.CellRect( DBGridEh1.Col, DBGridEh1.Row ).Top ) and ( not ( gdFocused in State ) or not DBGridEh1.Focused ) then
    DBGridEh1.Canvas.Brush.Color := clAqua;
  DBGridEh1.DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_zxdxd.FormShow( Sender: TObject );
var
  I: Integer;
  v_zzdx:string;
begin
  QuickRep6.Visible := false;
  QuickRep3.Visible := false;
  QuickRep5.Visible := false;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  v_zzdx := DM_data.qry_pub.FieldByName( 'jhdzz' ).AsString;
  ComboBox1.Items.Clear;

  if zzdx = 'A4' then
  begin
    _mydyzs:=5;
  end
  else
    _mydyzs:=9;

  for I := 0 to _mydyzs - 1 do
  begin
     ComboBox1.Items.Add(IntToStr(i+1));
  end;
  ComboBox1.ItemIndex :=0;



end;






procedure Tfrm_zxdxd.pro_cqxd_a4;
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'yytj like ''%静滴%'' and  tzrq=null and id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;  
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;  
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      
      QRLabel2.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and kdks='+''''+pub_ksdm+''')'+' or (yytj=''静脉泵入'' and  tzrq=null and kdks='+''''+pub_ksdm+''')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_cqxd_b5;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；
  yzid:string;

begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'yytj like ''%静滴%'' and  tzrq=null and id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;
     _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=false;
        QRLabel5.Enabled:=false;
        QRLabel6.Enabled:=false;
        QRShape1.Enabled := false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;

        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        QRLabeljy2.Caption := pub_yymc + '长期输液计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+'卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );

        QuickRep6.Preview;
      end;
    end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and kdks='+''''+pub_ksdm+''')'+' or (yytj=''静脉泵入'' and  tzrq=null and kdks='+''''+pub_ksdm+''')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
end;




procedure Tfrm_zxdxd.pro_xd_a4_zs;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''静注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''皮下'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''穴注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;  
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;  
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      
      QRLabel2.Caption := pub_yymc + '长期注射计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''静注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''皮下'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''穴注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_a4_zl;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      QRLabel2.Caption := pub_yymc + '长期治疗计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;




procedure Tfrm_zxdxd.pro_xd_a4_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      QRLabel2.Caption := pub_yymc + '临时输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_a4_zl_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true;
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;


      QRLabel2.Caption := pub_yymc + '临时治疗执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_a4_zs_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true;
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;


      QRLabel2.Caption := pub_yymc + '临时注射执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_cqxd_a4_id(m:integer);
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
    v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;  
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;  
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      if m=1 then
        QRLabel2.Caption := pub_yymc + '长期输液计划执行单'
      else if m=2 then
       QRLabel2.Caption := pub_yymc + '长期治疗计划执行单'
      else if m=3 then
       QRLabel2.Caption := pub_yymc + '长期注射计划执行单'
      else if m=4 then
       QRLabel2.Caption := pub_yymc + '临时输液计划执行单'
      else if m=5 then
       QRLabel2.Caption := pub_yymc + '临时治疗计划执行单'
      else if m=6 then
       QRLabel2.Caption := pub_yymc + '临时注射计划执行单';

      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


end.

