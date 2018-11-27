                {*******************************************}
                {         HSPackage V1.0 自定义组件包       }
                {            HSBarCodeImage v1.1            }
                {              小点工作室编写               }
                {                                           }
                { Copyright (c) 1998-2002 by onedot         }
                {       E-Mail:onedot@sohu.com              }
                {*******************************************}
//*********************************************************************************/
//1.本控件完全免费并且代码开放                                                     /
//2.算法参考FR有关条形码算法                                                       /
//3.完全所见即所得；支持DB和非DB操作；从TImage继承方便显示位置、区域控制 ；        /
//  支持在QReport和其他任何可接收可视化控件得报表中使用                            /
//  以基本VCL为基础不需要任何额外文件；安装方便                                    /
//4.主要属性及方法如下                                                             /
//Barcode:如果非DB显示时为指定需要显示的条形码字符串                               /
//BarCodeType:需要显示的条形码规格                                                 /
//BarCodeWidth:条形码的宽度（标准为16，普通为32，会自动扩大，但会有极限）          /
//BarcodeHeight：条形码区的高度                                                    /
//BarcodeAngle：条形码的旋转                                                       /
//BarLabel:条形码的显示注释（注释部分为该值自动加上BarCode的值显示）               /
//BarShowLabel:是否显示条形码的注释                                                /
//DataSource,DataField:同其他DB控件，指定后将显示对应数据的值，BarCode则失效       /
//5.主要方法                                                                       /
//ShowBarCode:显示当前得条形码图形                                                 /
//Print:打印当前条形码图形                                                         /
//*********************************************************************************/
//v1.0支持条形码规格清单：
//  bcCode_2_5_interleaved, bcCode_2_5_industrial,
//  bcCode_2_5_matrix,bcCode39,bcCode39Extended,bcCode128A,bcCode128B,
//  bcCode128C,bcCode93,bcCode93Extended,bcCodeMSI,bcCodePostNet,
//  bcCodeCodabar,bcCodeEAN8,bcCodeEAN13,bcCodeUPC_A,bcCodeUPC_E0,
//  bcCodeUPC_E1,bcCodeUPC_Supp2{ UPC 2 digit supplemental },
//  bcCodeUPC_Supp5{ UPC 5 digit supplemental } bcCodeEAN128A,bcCodeEAN128B,
//  bcCodeEAN128C
//
//*********************************************************************************/
//v1.1更新记录
//应网友要求，对最常用的EAN13做了修改，使其完全符合EAN13要求
//BarLabel默认值为空，如果为空不显示冒号
//增加了BARCODEANGLE属性，即旋转角度的显示,但不是和FR的旋转一个原理，因时间紧张没太多求更好算法
//HSBARCODE本身还有一些属性在HSBARCODEIMAGE中未提供设置和访问，但都不是常用的，故省
//
//*********************************************************************************/
//附加说明：
//熬了个晚上，我没有精力再为该控件做更多工作，希望有人可以将它改成也可以加入到FastReport中
//为不和FR本身冲突，我的命名都已经不同了，因此不用担心会有冲突
//*********************************************************************************/
//版权声明：本代码完全公开，你可以对其任意修改、发布。本人对该代码不保证负责永久维护
//
//*********************************************************************************/

unit uHSBarCodeImage;

interface

uses
  WinProcs, ExtCtrls,WinTypes,DBCtrls,Messages,DB,Math,
  SysUtils,StdCtrls,Classes, Graphics, Controls, Forms, Dialogs,Printers;

type
  THSBarcodeType =
  (bcCode_2_5_interleaved,
  bcCode_2_5_industrial,
  bcCode_2_5_matrix,
  bcCode39,
  bcCode39Extended,
  bcCode128A,
  bcCode128B,
  bcCode128C,
  bcCode93,
  bcCode93Extended,
  bcCodeMSI,
  bcCodePostNet,
  bcCodeCodabar,
  bcCodeEAN8,
  bcCodeEAN13,
  bcCodeUPC_A,
  bcCodeUPC_E0,
  bcCodeUPC_E1,
  bcCodeUPC_Supp2,    { UPC 2 digit supplemental }
  bcCodeUPC_Supp5,    { UPC 5 digit supplemental }
  bcCodeEAN128A,
  bcCodeEAN128B,
  bcCodeEAN128C
  );


  THSBarLineType = (white, black, black_half);  {for internal use only}
  { black_half means a black line with 2/5 height (used for PostNet) }


  THSCheckSumMethod =
  (
  csmNone,
  csmModulo10
  );


  THSBarcode = class(TComponent)
  private
    { Private-Deklarationen }
    FHeight : integer;
    FText  : string;
    FTop    : integer;
    FLeft   : integer;
    FModul  : integer;
    FRatio  : double;
    FTyp    : THSBarcodeType;
    FCheckSum:boolean;
    FAngle  : double;
    FColor  : TColor;
    FColorBar:TColor;
    FCheckSumMethod : THSCheckSumMethod;
    FOnChange : TNotifyEvent;


    modules:array[0..3] of shortint;


    procedure OneBarProps(code:char; var Width:integer; var lt:THSBarLineType);

    procedure DoLines(data:string; Canvas:TCanvas);

    function SetLen(pI:byte):string;

    function Code_2_5_interleaved:string;
    function Code_2_5_industrial:string;
    function Code_2_5_matrix:string;
    function Code_39:string;
    function Code_39Extended:string;
    function Code_128:string;
    function Code_93:string;
    function Code_93Extended:string;
    function Code_MSI:string;
    function Code_PostNet:string;
    function Code_Codabar:string;
    function Code_EAN8:string;
    function Code_EAN13:string;
    function Code_UPC_A:string;
    function Code_UPC_E0:string;
    function Code_UPC_E1:string;
    function Code_Supp5:string;
    function Code_Supp2:string;

    procedure MakeModules;

    procedure SetModul(v:integer);

    function GetWidth : integer;
    procedure SetWidth(Value :integer);

    function DoCheckSumming(const data : string):string;
      procedure SetRatio(const Value: Double);
      procedure SetTyp(const Value: THSBarcodeType);
      procedure SetAngle(const Value: Double);
      procedure SetText(const Value: string);
      procedure SetTop(const Value: Integer);
      procedure SetLeft(const Value: Integer);
      procedure SetCheckSum(const Value: Boolean);
    procedure SetHeight(const Value: integer);
    function GetCanvasHeight: Integer;
    function GetCanvasWidth: Integer;
    function IsAppendLine(const i:integer):Boolean;  //是否需要当前数据线延长
  protected
    { Protected-Deklarationen }
    function MakeData : string;
      procedure DoChange; virtual;

  public
    { Public-Deklarationen }
    constructor Create(Owner:TComponent); override;
    procedure Assign(Source: TPersistent);override;
    procedure DrawBarcode(Canvas:TCanvas);
    property CanvasHeight :Integer read GetCanvasHeight;
    property CanvasWidth :Integer read GetCanvasWidth;
  published
    { Published-Deklarationen }
   { Height of Barcode (Pixel)}
    property Height : integer read FHeight write SetHeight;
    property Text   : string read FText write SetText;
    property Top    : Integer read FTop write SetTop;
    property Left   : Integer read FLeft write SetLeft;
   { Width of the smallest line in a Barcode }
    property Modul  : integer read FModul  write SetModul;
    property Ratio  : Double read FRatio write SetRatio;
    property Typ    : THSBarcodeType read FTyp write SetTyp default bcCode_2_5_interleaved;
   { build CheckSum ? }
    property Checksum:boolean read FCheckSum write SetCheckSum default FALSE;
    property CheckSumMethod:THSCheckSumMethod read FCheckSumMethod write FCheckSumMethod default csmModulo10;

   { 0 - 360 degree }
    property Angle  :double read FAngle write SetAngle;

    property Width : integer read GetWidth write SetWidth stored False;
    property Color:TColor read FColor write FColor default clWhite;
    property ColorBar:TColor read FColorBar write FColorBar default clBlack;
      property OnChange:TNotifyEvent read FOnChange write FOnChange;
  end;


  TBCdata = record
   Name:string;        { Name of Barcode }
   num :Boolean;       { numeric data only }
  end;

  THSBarCodeImage = class(TImage)
  private
    { Private declarations }
    FCode:String;
    FWidth:Integer;
    FHeight:Integer;
    FCodeType:THSBarcodeType;
    FDataLink:TFieldDataLink;
    FBarLabel:String;
    FShowLabel: Boolean;
    FBarCodeAngle:Double;
    procedure SetCode(const Value: string);
    procedure SetCodeType(const Value: THSBarcodeType);
    procedure SetHeight(const Value: integer);
    procedure SetWidth(const Value: integer);
    procedure SetBarLabel(const Value: String);
    procedure ChangeSet(Sender:TObject);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure SetShowLabel(const Value: Boolean);
    procedure SetBarCodeAngle(Const value:Double);
  protected
    { Protected declarations }
    procedure ResetMaxLength;
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ShowBarCode;
    procedure Print;
  published
    { Published declarations }
    property BarCode: string read FCode write SetCode;
    property BarCodeWidth: integer read FWidth write SetWidth;
    property BarHeight: integer read FHeight write SetHeight;
    property BarCodeType: THSBarcodeType read FCodeType write SetCodeType;
    property BarCodeAngle:Double read FBarCodeAngle Write SetBarCodeAngle;
    property BarLabel:String read FBarLabel write SetBarLabel;
    property DataField:String read GetDataField write SetDataField;
    property DataSource:TDataSource read GetDataSource write SetDataSource;
    property BarShowLabel:Boolean read FShowLabel write SetShowLabel;
  end;


const BCdata:array[bcCode_2_5_interleaved..bcCodeEAN128C] of TBCdata =
  (
    (Name:'2_5_interleaved'; num:True),
    (Name:'2_5_industrial';  num:True),
    (Name:'2_5_matrix';      num:True),
    (Name:'Code39';          num:False),
    (Name:'Code39 Extended'; num:False),
    (Name:'Code128A';        num:False),
    (Name:'Code128B';        num:False),
    (Name:'Code128C';        num:True),
    (Name:'Code93';          num:False),
    (Name:'Code93 Extended'; num:False),
    (Name:'MSI';             num:True),
    (Name:'PostNet';         num:True),
    (Name:'Codebar';         num:False),
    (Name:'EAN8';            num:True),
    (Name:'EAN13';           num:True),
    (Name:'UPC_A';           num:True),
    (Name:'UPC_E0';          num:True),
    (Name:'UPC_E1';          num:True),
    (Name:'UPC Supp2';       num:True),
    (Name:'UPC Supp5';       num:True),
    (Name:'EAN128A';         num:False),
    (Name:'EAN128B';         num:False),
    (Name:'EAN128C';         num:True)
  );



procedure Register;

implementation

procedure ImageRotate90(aBitmap: TBitmap);
var
  nIdx, nOfs,
  x, y, i,nMultiplier: integer;
  nMemWidth, nMemHeight, nMemSize,nScanLineSize: LongInt;
  aScnLnBuffer: PChar;
  aScanLine: PByteArray;
begin
  nMultiplier :=2;  //只需要2位即可
  nMemWidth := aBitmap.Height;
  nMemHeight := aBitmap.Width;
  nMemSize := nMemWidth * nMemHeight * nMultiplier;
  GetMem(aScnLnBuffer, nMemSize);
  try
    nScanLineSize := aBitmap.Width * nMultiplier;
    GetMem(aScanLine, nScanLineSize);
    try
      for y := 0 to aBitmap.Height-1 do
      begin
        Move(aBitmap.ScanLine[y]^, aScanLine^, nScanLineSize);
        for x := 0 to aBitmap.Width-1 do
        begin
          nIdx := ((aBitmap.Width-1) - x) * nMultiplier;
          nOfs := (x * nMemWidth * nMultiplier) +(y * nMultiplier);
          for i := 0 to nMultiplier-1 do
            Byte(aScnLnBuffer[nOfs + i]) := aScanLine[nIdx+i];
        end;
      end;
      aBitmap.Height := nMemHeight;
      aBitmap.Width := nMemWidth;
      for y := 0 to nMemHeight-1 do
      begin
        nOfs := y * nMemWidth * nMultiplier;
        Move((@(aScnLnBuffer[nOfs]))^, aBitmap.ScanLine[y]^, nMemWidth * nMultiplier);
      end;
    finally
      FreeMem(aScanLine, nScanLineSize);
    end;
  finally
    FreeMem(aScnLnBuffer, nMemSize);
  end;
end;





function CheckSumModulo10(const data:string):string;
        var i,fak,sum : Integer;
begin
        sum := 0;
        fak := Length(data);
        for i:=1 to Length(data) do
        begin
                if (fak mod 2) = 0 then
                        sum := sum + (StrToInt(data[i])*1)
                else
                        sum := sum + (StrToInt(data[i])*3);
                dec(fak);
        end;
        if (sum mod 10) = 0 then
                result := data+'0'
        else
                result := data+IntToStr(10-(sum mod 10));
end;

procedure Assert(Cond: Boolean; Text: String);
begin
  if not Cond then
    raise Exception.Create(Text);
end;

{
  converts a string from '321' to the internal representation '715'
  i need this function because some pattern tables have a different
  format :

  '00111'
  converts to '05161'
}
function Convert(const s:string):string;
var
  i, v : integer;
begin
  Result := s;  { same Length as Input - string }
  for i:=1 to Length(s) do
  begin
    v := ord(s[i]) - 1;

    if odd(i) then
      Inc(v, 5);
    Result[i] := Chr(v);
  end;
end;

(*
 * Berechne die Quersumme aus einer Zahl x
 * z.B.: Quersumme von 1234 ist 10
 *)
function quersumme(x:integer):integer;
var
  sum:integer;
begin
  sum := 0;

  while x > 0 do
  begin
    sum := sum + (x mod 10);
    x := x div 10;
  end;
  result := sum;
end;


{
  Rotate a Point by Angle 'alpha'
}
function Rotate2D(p:TPoint; alpha:double): TPoint;
var
  sinus, cosinus : Extended;
begin
  sinus   := sin(alpha);
  cosinus := cos(alpha);
  result.x := Round(p.x*cosinus + p.y*sinus);
  result.y := Round(-p.x*sinus + p.y*cosinus);
end;

{
  Move Point "a" by Vector "b"
}
function Translate2D(a, b:TPoint): TPoint;
begin
  result.x := a.x + b.x;
  result.y := a.y + b.y;
end;


{
  Move the orgin so that when point is rotated by alpha, the rect
  between point and orgin stays in the visible quadrant.
}
function TranslateQuad2D(const alpha :double; const orgin, point :TPoint): TPoint;
var
   alphacos: Extended;
   alphasin: Extended;
   moveby:   TPoint;
begin
   alphasin := sin(alpha);
   alphacos := cos(alpha);

   if alphasin >= 0 then
   begin
      if alphacos >= 0 then
      begin
         // 1. Quadrant
         moveby.x := 0;
         moveby.y := Round(alphasin*point.x);
      end
      else
      begin
         // 2. Quadrant
         moveby.x := -Round(alphacos*point.x);
         moveby.y := Round(alphasin*point.x - alphacos*point.y);
      end;
   end
   else
   begin
      if alphacos >= 0 then
      begin
         // 4. quadrant
         moveby.x := -Round(alphasin*point.y);
         moveby.y := 0;
      end
      else
      begin
         // 3. quadrant
         moveby.x := -Round(alphacos*point.x) - Round(alphasin*point.y);
         moveby.y := -Round(alphacos*point.y);
      end;
   end;
   Result := Translate2D(orgin, moveby);
end;


constructor THSBarcode.Create(Owner:TComponent);
begin
  inherited Create(owner);
  FAngle := 0.0;
  FRatio := 2.0;
  FModul := 1;
  FTyp   := bcCodeEAN13;
  FCheckSum := FALSE;
  FCheckSumMethod := csmModulo10;
  FColor    := clWhite;
  FColorBar := clBlack;
end;


procedure THSBarcode.Assign(Source: TPersistent);
var
   BSource : THSBarcode;
begin
   if Source is THSBarcode then
   begin
      BSource    := THSBarcode(Source);
      FHeight    := BSource.FHeight;
      FText      := BSource.FText;
      FTop       := BSource.FTop;
      FLeft      := BSource.FLeft;
      FModul     := BSource.FModul;
      FRatio     := BSource.FRatio;
      FTyp       := BSource.FTyp;
      FCheckSum  := BSource.FCheckSum;
      FAngle     := BSource.FAngle;
      FColor     := BSource.FColor;
      FColorBar  := BSource.FColorBar;
      FCheckSumMethod := BSource.FCheckSumMethod;
      FOnChange  := BSource.FOnChange;
   end;
end;



{ set Modul Width  }
procedure THSBarcode.SetModul(v:integer);
begin
  if (v >= 1) and (v < 50) then
   begin
    FModul := v;
      DoChange;
   end;
end;


{
calculate the width and the linetype of a sigle bar


  Code   Line-Color      Width               Height
------------------------------------------------------------------
  '0'   white           100%                full
  '1'   white           100%*Ratio          full
  '2'   white           150%*Ratio          full
  '3'   white           200%*Ratio          full
  '5'   black           100%                full
  '6'   black           100%*Ratio          full
  '7'   black           150%*Ratio          full
  '8'   black           200%*Ratio          full
  'A'   black           100%                2/5  (used for PostNet)
  'B'   black           100%*Ratio          2/5  (used for PostNet)
  'C'   black           150%*Ratio          2/5  (used for PostNet)
  'D'   black           200%*Ratio          2/5  (used for PostNet)
}
procedure THSBarcode.OneBarProps(code:char; var Width:integer; var lt:THSBarLineType);
begin
  case code of
    '0': begin width := modules[0]; lt := white; end;
    '1': begin width := modules[1]; lt := white; end;
    '2': begin width := modules[2]; lt := white; end;
    '3': begin width := modules[3]; lt := white; end;


    '5': begin width := modules[0]; lt := black; end;
    '6': begin width := modules[1]; lt := black; end;
    '7': begin width := modules[2]; lt := black; end;
    '8': begin width := modules[3]; lt := black; end;

    'A': begin width := modules[0]; lt := black_half; end;
    'B': begin width := modules[1]; lt := black_half; end;
    'C': begin width := modules[2]; lt := black_half; end;
    'D': begin width := modules[3]; lt := black_half; end;
  else
    begin
   {something went wrong  :-(  }
   {mistyped pattern table}
    raise Exception.CreateFmt('%s: internal Error', [self.ClassName]);
    end;
  end;
end;


function THSBarcode.MakeData : string;
var
  i : integer;
begin
  {calculate the with of the different lines (modules)}
  MakeModules;


  {numeric barcode type ?}
  if BCdata[Typ].num then
  begin
   FText := Trim(FText); {remove blanks}
    for i := 1 to Length(Ftext) do
      if (FText[i] > '9') or (FText[i] < '0') then
        raise Exception.Create('Barcode must be numeric');
  end;


  {get the pattern of the barcode}
  case Typ of
    bcCode_2_5_interleaved: Result := Code_2_5_interleaved;
    bcCode_2_5_industrial:  Result := Code_2_5_industrial;
    bcCode_2_5_matrix:      Result := Code_2_5_matrix;
    bcCode39:               Result := Code_39;
    bcCode39Extended:       Result := Code_39Extended;
    bcCode128A,
    bcCode128B,
    bcCode128C,
    bcCodeEAN128A,
    bcCodeEAN128B,
    bcCodeEAN128C:          Result := Code_128;
    bcCode93:               Result := Code_93;
    bcCode93Extended:       Result := Code_93Extended;
    bcCodeMSI:              Result := Code_MSI;
    bcCodePostNet:          Result := Code_PostNet;
    bcCodeCodabar:          Result := Code_Codabar;
    bcCodeEAN8:             Result := Code_EAN8;
    bcCodeEAN13:            Result := Code_EAN13;
    bcCodeUPC_A:            Result := Code_UPC_A;
    bcCodeUPC_E0:           Result := Code_UPC_E0;
    bcCodeUPC_E1:           Result := Code_UPC_E1;
    bcCodeUPC_Supp2:        Result := Code_Supp2;
    bcCodeUPC_Supp5:        Result := Code_Supp5;
  else
    raise Exception.CreateFmt('%s: wrong BarcodeType', [self.ClassName]);
  end;

{
Showmessage(Format('Data <%s>', [Result]));
}
end;



function THSBarcode.GetWidth:integer;
var
  data : string;
  i : integer;
  w : integer;
  lt : THSBarLineType;
begin
  Result := 0;

  {get barcode pattern}
  data := MakeData;

  for i:=1 to Length(data) do  {examine the pattern string}
  begin
    OneBarProps(data[i], w, lt);
    Inc(Result, w);
  end;
end;

procedure THSBarcode.SetWidth(Value :integer);
var
  data : string;
  i : integer;
  w, wtotal : integer;
  lt : THSBarLineType;
begin
  wtotal := 0;

  {get barcode pattern}
  data := MakeData;

  for i:=1 to Length(data) do  {examine the pattern string}
  begin
    OneBarProps(data[i], w, lt);
    Inc(wtotal, w);
  end;


  {
  wtotal:  current width of barcode
  Value :  new width of barcode



  }

  if wtotal > 0 then  { don't divide by 0 ! }
    SetModul((FModul * Value) div wtotal);
end;



function THSBarcode.DoCheckSumming(const data : string):string;
begin
  case FCheckSumMethod of

    csmNone:
      Result := data;
    csmModulo10:
      Result := CheckSumModulo10(data);

  end;
end;




{
////////////////////////////// EAN /////////////////////////////////////////
}


{
////////////////////////////// EAN8 /////////////////////////////////////////
}

{Pattern for Barcode EAN Charset A}
     {L1   S1   L2   S2}
const tabelle_EAN_A:array['0'..'9'] of string =
  (
  ('2605'),    { 0 }
  ('1615'),    { 1 }
  ('1516'),    { 2 }
  ('0805'),    { 3 }
  ('0526'),    { 4 }
  ('0625'),    { 5 }
  ('0508'),    { 6 }
  ('0706'),    { 7 }
  ('0607'),    { 8 }
  ('2506')     { 9 }
  );

{Pattern for Barcode EAN Charset C}
     {S1   L1   S2   L2}
const tabelle_EAN_C:array['0'..'9'] of string =
  (
  ('7150' ),    { 0 }
  ('6160' ),    { 1 }
  ('6061' ),    { 2 }
  ('5350' ),    { 3 }
  ('5071' ),    { 4 }
  ('5170' ),    { 5 }
  ('5053' ),    { 6 }
  ('5251' ),    { 7 }
  ('5152' ),    { 8 }
  ('7051' )     { 9 }
  );


function THSBarcode.Code_EAN8:string;
var
  i : integer;
  tmp : String;
begin
  if FCheckSum then
  begin
    tmp := SetLen(7);
    tmp := DoCheckSumming(copy(tmp,length(tmp)-6,7));
  end
  else
    tmp := SetLen(8);

  Assert(Length(tmp)=8, 'Invalid Text len (EAN8)');

  result := '505';   {Startcode}

  for i:=1 to 4 do
    result := result + tabelle_EAN_A[tmp[i]] ;

  result := result + '05050';   {Center Guard Pattern}

  for i:=5 to 8 do
    result := result + tabelle_EAN_C[tmp[i]] ;

  result := result + '505';   {Stopcode}
end;

{////////////////////////////// EAN13 ///////////////////////////////////////}

{Pattern for Barcode EAN Zeichensatz B}
     {L1   S1   L2   S2}
const tabelle_EAN_B:array['0'..'9'] of string =
  (
  ('0517'),    { 0 }
  ('0616'),    { 1 }
  ('1606'),    { 2 }
  ('0535'),    { 3 }
  ('1705'),    { 4 }
  ('0715'),    { 5 }
  ('3505'),    { 6 }
  ('1525'),    { 7 }
  ('2515'),    { 8 }
  ('1507')     { 9 }
  );

{Zuordung der Paraitaetsfolgen f黵 EAN13}
const tabelle_ParityEAN13:array[0..9, 1..6] of char =
  (
  ('A', 'A', 'A', 'A', 'A', 'A'),    { 0 }
  ('A', 'A', 'B', 'A', 'B', 'B'),    { 1 }
  ('A', 'A', 'B', 'B', 'A', 'B'),    { 2 }
  ('A', 'A', 'B', 'B', 'B', 'A'),    { 3 }
  ('A', 'B', 'A', 'A', 'B', 'B'),    { 4 }
  ('A', 'B', 'B', 'A', 'A', 'B'),    { 5 }
  ('A', 'B', 'B', 'B', 'A', 'A'),    { 6 }
  ('A', 'B', 'A', 'B', 'A', 'B'),    { 7 }
  ('A', 'B', 'A', 'B', 'B', 'A'),    { 8 }
  ('A', 'B', 'B', 'A', 'B', 'A')     { 9 }
  );

function THSBarcode.Code_EAN13:string;
var
  i, LK: integer;
  tmp : String;
begin
  if FCheckSum then
  begin
    tmp := SetLen(12);
    tmp := DoCheckSumming(tmp);
  end
  else
    tmp := SetLen(13);

  Assert(Length(tmp) = 13, 'Invalid Text len (EAN13)');
  FText := tmp;

  LK := StrToInt(tmp[1]);
  tmp := copy(tmp,2,12);

  result := '505';   {Startcode}

  for i:=1 to 6 do
  begin
    case tabelle_ParityEAN13[LK,i] of
      'A' : result := result + tabelle_EAN_A[tmp[i]];
      'B' : result := result + tabelle_EAN_B[tmp[i]] ;
      'C' : result := result + tabelle_EAN_C[tmp[i]] ;
  end;
  end;

  result := result + '05050';   {Center Guard Pattern}

  for i:=7 to 12 do
    result := result + tabelle_EAN_C[tmp[i]] ;

    result := result + '505';   {Stopcode}
end;

{Pattern for Barcode 2 of 5}
const tabelle_2_5:array['0'..'9', 1..5] of char =
  (
  ('0', '0', '1', '1', '0'),    {'0'}
  ('1', '0', '0', '0', '1'),    {'1'}
  ('0', '1', '0', '0', '1'),    {'2'}
  ('1', '1', '0', '0', '0'),    {'3'}
  ('0', '0', '1', '0', '1'),    {'4'}
  ('1', '0', '1', '0', '0'),    {'5'}
  ('0', '1', '1', '0', '0'),    {'6'}
  ('0', '0', '0', '1', '1'),    {'7'}
  ('1', '0', '0', '1', '0'),    {'8'}
  ('0', '1', '0', '1', '0')     {'9'}
  );

function THSBarcode.Code_2_5_interleaved:string;
var
  i, j: integer;
  c : char;

begin
  result := '5050';   {Startcode}

  for i:=1 to Length(FText) div 2 do
  begin
    for j:= 1 to 5 do
    begin
      if tabelle_2_5[FText[i*2-1], j] = '1' then
        c := '6'
      else
        c := '5';
      result := result + c;
      if tabelle_2_5[FText[i*2], j] = '1' then
        c := '1'
      else
        c := '0';
      result := result + c;
    end;
  end;

  result := result + '605';    {Stopcode}
end;


function THSBarcode.Code_2_5_industrial:string;
var
  i, j: integer;
begin
  result := '606050';   {Startcode}

  for i:=1 to Length(FText) do
  begin
    for j:= 1 to 5 do
    begin
    if tabelle_2_5[FText[i], j] = '1' then
      result := result + '60'
    else
      result := result + '50';
    end;
  end;

  result := result + '605060';   {Stopcode}
end;

function THSBarcode.Code_2_5_matrix:string;
var
  i, j: integer;
  c :char;
begin
  result := '705050';   {Startcode}

  for i:=1 to Length(FText) do
  begin
    for j:= 1 to 5 do
    begin
      if tabelle_2_5[FText[i], j] = '1' then
        c := '1'
      else
        c := '0';

    {Falls i ungerade ist dann mache L點ke zu Strich}
      if odd(j) then
        c := chr(ord(c)+5);
      result := result + c;
    end;
   result := result + '0';   {L點ke zwischen den Zeichen}
  end;

  result := result + '70505';   {Stopcode}
end;


function THSBarcode.Code_39:string;

type TCode39 =
  record
    c : char;
    data : array[0..9] of char;
    chk: shortint;
  end;

const tabelle_39: array[0..43] of TCode39 = (
  ( c:'0'; data:'505160605'; chk:0 ),
  ( c:'1'; data:'605150506'; chk:1 ),
  ( c:'2'; data:'506150506'; chk:2 ),
  ( c:'3'; data:'606150505'; chk:3 ),
  ( c:'4'; data:'505160506'; chk:4 ),
  ( c:'5'; data:'605160505'; chk:5 ),
  ( c:'6'; data:'506160505'; chk:6 ),
  ( c:'7'; data:'505150606'; chk:7 ),
  ( c:'8'; data:'605150605'; chk:8 ),
  ( c:'9'; data:'506150605'; chk:9 ),
  ( c:'A'; data:'605051506'; chk:10),
  ( c:'B'; data:'506051506'; chk:11),
  ( c:'C'; data:'606051505'; chk:12),
  ( c:'D'; data:'505061506'; chk:13),
  ( c:'E'; data:'605061505'; chk:14),
  ( c:'F'; data:'506061505'; chk:15),
  ( c:'G'; data:'505051606'; chk:16),
  ( c:'H'; data:'605051605'; chk:17),
  ( c:'I'; data:'506051605'; chk:18),
  ( c:'J'; data:'505061605'; chk:19),
  ( c:'K'; data:'605050516'; chk:20),
  ( c:'L'; data:'506050516'; chk:21),
  ( c:'M'; data:'606050515'; chk:22),
  ( c:'N'; data:'505060516'; chk:23),
  ( c:'O'; data:'605060515'; chk:24),
  ( c:'P'; data:'506060515'; chk:25),
  ( c:'Q'; data:'505050616'; chk:26),
  ( c:'R'; data:'605050615'; chk:27),
  ( c:'S'; data:'506050615'; chk:28),
  ( c:'T'; data:'505060615'; chk:29),
  ( c:'U'; data:'615050506'; chk:30),
  ( c:'V'; data:'516050506'; chk:31),
  ( c:'W'; data:'616050505'; chk:32),
  ( c:'X'; data:'515060506'; chk:33),
  ( c:'Y'; data:'615060505'; chk:34),
  ( c:'Z'; data:'516060505'; chk:35),
  ( c:'-'; data:'515050606'; chk:36),
  ( c:'.'; data:'615050605'; chk:37),
  ( c:' '; data:'516050605'; chk:38),
  ( c:'*'; data:'515060605'; chk:0 ),
  ( c:'$'; data:'515151505'; chk:39),
  ( c:'/'; data:'515150515'; chk:40),
  ( c:'+'; data:'515051515'; chk:41),
  ( c:'%'; data:'505151515'; chk:42)
  );


function FindIdx(z:char):integer;
var
  i:integer;
begin
  for i:=0 to High(tabelle_39) do
  begin
    if z = tabelle_39[i].c then
    begin
      result := i;
      exit;
    end;
  end;
  result := -1;
end;

var
  i, idx : integer;
  checksum:integer;

begin
  checksum := 0;
  {Startcode}
  result := tabelle_39[FindIdx('*')].data + '0';

  for i:=1 to Length(FText) do
  begin
    idx := FindIdx(FText[i]);
    if idx < 0 then
      continue;
    result := result + tabelle_39[idx].data + '0';
    Inc(checksum, tabelle_39[idx].chk);
  end;

  {Calculate Checksum Data}
  if FCheckSum then
    begin
    checksum := checksum mod 43;
    for i:=0 to High(tabelle_39) do
      if checksum = tabelle_39[i].chk then
      begin
        result := result + tabelle_39[i].data + '0';
        break;
      end;
    end;

  {Stopcode}
  result := result + tabelle_39[FindIdx('*')].data;
end;

function THSBarcode.Code_39Extended:string;

const code39x : array[0..127] of string[2] =
  (
  ('%U'), ('$A'), ('$B'), ('$C'), ('$D'), ('$E'), ('$F'), ('$G'),
  ('$H'), ('$I'), ('$J'), ('$K'), ('$L'), ('$M'), ('$N'), ('$O'),
  ('$P'), ('$Q'), ('$R'), ('$S'), ('$T'), ('$U'), ('$V'), ('$W'),
  ('$X'), ('$Y'), ('$Z'), ('%A'), ('%B'), ('%C'), ('%D'), ('%E'),
   (' '), ('/A'), ('/B'), ('/C'), ('/D'), ('/E'), ('/F'), ('/G'),
  ('/H'), ('/I'), ('/J'), ('/K'), ('/L'), ('/M'), ('/N'), ('/O'),
  ( '0'),  ('1'),  ('2'),  ('3'),  ('4'),  ('5'),  ('6'),  ('7'),
   ('8'),  ('9'), ('/Z'), ('%F'), ('%G'), ('%H'), ('%I'), ('%J'),
  ('%V'),  ('A'),  ('B'),  ('C'),  ('D'),  ('E'),  ('F'),  ('G'),
   ('H'),  ('I'),  ('J'),  ('K'),  ('L'),  ('M'),  ('N'),  ('O'),
   ('P'),  ('Q'),  ('R'),  ('S'),  ('T'),  ('U'),  ('V'),  ('W'),
   ('X'),  ('Y'),  ('Z'), ('%K'), ('%L'), ('%M'), ('%N'), ('%O'),
  ('%W'), ('+A'), ('+B'), ('+C'), ('+D'), ('+E'), ('+F'), ('+G'),
  ('+H'), ('+I'), ('+J'), ('+K'), ('+L'), ('+M'), ('+N'), ('+O'),
  ('+P'), ('+Q'), ('+R'), ('+S'), ('+T'), ('+U'), ('+V'), ('+W'),
  ('+X'), ('+Y'), ('+Z'), ('%P'), ('%Q'), ('%R'), ('%S'), ('%T')
  );


var
  save:string;
  i : integer;
begin
  save := FText;
  FText := '';

  for i:=1 to Length(save) do
  begin
    if ord(save[i]) <= 127 then
      FText := FText + code39x[ord(save[i])];
  end;
  result := Code_39;
  FText := save;
end;



{
Code 128
}
function THSBarcode.Code_128:string;
type TCode128 =
  record
    a, b : char;
    c : string[2];
    data : string[6];
  end;

const tabelle_128: array[0..102] of TCode128 = (
  ( a:' '; b:' '; c:'00'; data:'212222' ),
  ( a:'!'; b:'!'; c:'01'; data:'222122' ),
  ( a:'"'; b:'"'; c:'02'; data:'222221' ),
  ( a:'#'; b:'#'; c:'03'; data:'121223' ),
  ( a:'$'; b:'$'; c:'04'; data:'121322' ),
  ( a:'%'; b:'%'; c:'05'; data:'131222' ),
  ( a:'&'; b:'&'; c:'06'; data:'122213' ),
  ( a:''''; b:''''; c:'07'; data:'122312' ),
  ( a:'('; b:'('; c:'08'; data:'132212' ),
  ( a:')'; b:')'; c:'09'; data:'221213' ),
  ( a:'*'; b:'*'; c:'10'; data:'221312' ),
  ( a:'+'; b:'+'; c:'11'; data:'231212' ),
  ( a:'?'; b:'?'; c:'12'; data:'112232' ),
  ( a:'-'; b:'-'; c:'13'; data:'122132' ),
  ( a:'.'; b:'.'; c:'14'; data:'122231' ),
  ( a:'/'; b:'/'; c:'15'; data:'113222' ),
  ( a:'0'; b:'0'; c:'16'; data:'123122' ),
  ( a:'1'; b:'1'; c:'17'; data:'123221' ),
  ( a:'2'; b:'2'; c:'18'; data:'223211' ),
  ( a:'3'; b:'3'; c:'19'; data:'221132' ),
  ( a:'4'; b:'4'; c:'20'; data:'221231' ),
  ( a:'5'; b:'5'; c:'21'; data:'213212' ),
  ( a:'6'; b:'6'; c:'22'; data:'223112' ),
  ( a:'7'; b:'7'; c:'23'; data:'312131' ),
  ( a:'8'; b:'8'; c:'24'; data:'311222' ),
  ( a:'9'; b:'9'; c:'25'; data:'321122' ),
  ( a:':'; b:':'; c:'26'; data:'321221' ),
  ( a:';'; b:';'; c:'27'; data:'312212' ),
  ( a:'<'; b:'<'; c:'28'; data:'322112' ),
  ( a:'='; b:'='; c:'29'; data:'322211' ),
  ( a:'>'; b:'>'; c:'30'; data:'212123' ),
  ( a:'?'; b:'?'; c:'31'; data:'212321' ),
  ( a:'@'; b:'@'; c:'32'; data:'232121' ),
  ( a:'A'; b:'A'; c:'33'; data:'111323' ),
  ( a:'B'; b:'B'; c:'34'; data:'131123' ),
  ( a:'C'; b:'C'; c:'35'; data:'131321' ),
  ( a:'D'; b:'D'; c:'36'; data:'112313' ),
  ( a:'E'; b:'E'; c:'37'; data:'132113' ),
  ( a:'F'; b:'F'; c:'38'; data:'132311' ),
  ( a:'G'; b:'G'; c:'39'; data:'211313' ),
  ( a:'H'; b:'H'; c:'40'; data:'231113' ),
  ( a:'I'; b:'I'; c:'41'; data:'231311' ),
  ( a:'J'; b:'J'; c:'42'; data:'112133' ),
  ( a:'K'; b:'K'; c:'43'; data:'112331' ),
  ( a:'L'; b:'L'; c:'44'; data:'132131' ),
  ( a:'M'; b:'M'; c:'45'; data:'113123' ),
  ( a:'N'; b:'N'; c:'46'; data:'113321' ),
  ( a:'O'; b:'O'; c:'47'; data:'133121' ),
  ( a:'P'; b:'P'; c:'48'; data:'313121' ),
  ( a:'Q'; b:'Q'; c:'49'; data:'211331' ),
  ( a:'R'; b:'R'; c:'50'; data:'231131' ),
  ( a:'S'; b:'S'; c:'51'; data:'213113' ),
  ( a:'T'; b:'T'; c:'52'; data:'213311' ),
  ( a:'U'; b:'U'; c:'53'; data:'213131' ),
  ( a:'V'; b:'V'; c:'54'; data:'311123' ),
  ( a:'W'; b:'W'; c:'55'; data:'311321' ),
  ( a:'X'; b:'X'; c:'56'; data:'331121' ),
  ( a:'Y'; b:'Y'; c:'57'; data:'312113' ),
  ( a:'Z'; b:'Z'; c:'58'; data:'312311' ),
  ( a:'['; b:'['; c:'59'; data:'332111' ),
  ( a:'\'; b:'\'; c:'60'; data:'314111' ),
  ( a:']'; b:']'; c:'61'; data:'221411' ),
  ( a:'^'; b:'^'; c:'62'; data:'431111' ),
  ( a:'_'; b:'_'; c:'63'; data:'111224' ),
  ( a:' '; b:'`'; c:'64'; data:'111422' ),
  ( a:' '; b:'a'; c:'65'; data:'121124' ),
  ( a:' '; b:'b'; c:'66'; data:'121421' ),
  ( a:' '; b:'c'; c:'67'; data:'141122' ),
  ( a:' '; b:'d'; c:'68'; data:'141221' ),
  ( a:' '; b:'e'; c:'69'; data:'112214' ),
  ( a:' '; b:'f'; c:'70'; data:'112412' ),
  ( a:' '; b:'g'; c:'71'; data:'122114' ),
  ( a:' '; b:'h'; c:'72'; data:'122411' ),
  ( a:' '; b:'i'; c:'73'; data:'142112' ),
  ( a:' '; b:'j'; c:'74'; data:'142211' ),
  ( a:' '; b:'k'; c:'75'; data:'241211' ),
  ( a:' '; b:'l'; c:'76'; data:'221114' ),
  ( a:' '; b:'m'; c:'77'; data:'413111' ),
  ( a:' '; b:'n'; c:'78'; data:'241112' ),
  ( a:' '; b:'o'; c:'79'; data:'134111' ),
  ( a:' '; b:'p'; c:'80'; data:'111242' ),
  ( a:' '; b:'q'; c:'81'; data:'121142' ),
  ( a:' '; b:'r'; c:'82'; data:'121241' ),
  ( a:' '; b:'s'; c:'83'; data:'114212' ),
  ( a:' '; b:'t'; c:'84'; data:'124112' ),
  ( a:' '; b:'u'; c:'85'; data:'124211' ),
  ( a:' '; b:'v'; c:'86'; data:'411212' ),
  ( a:' '; b:'w'; c:'87'; data:'421112' ),
  ( a:' '; b:'x'; c:'88'; data:'421211' ),
  ( a:' '; b:'y'; c:'89'; data:'212141' ),
  ( a:' '; b:'z'; c:'90'; data:'214121' ),
  ( a:' '; b:'{'; c:'91'; data:'412121' ),
  ( a:' '; b:'|'; c:'92'; data:'111143' ),
  ( a:' '; b:'}'; c:'93'; data:'111341' ),
  ( a:' '; b:'~'; c:'94'; data:'131141' ),
  ( a:' '; b:' '; c:'95'; data:'114113' ),
  ( a:' '; b:' '; c:'96'; data:'114311' ),
  ( a:' '; b:' '; c:'97'; data:'411113' ),
  ( a:' '; b:' '; c:'98'; data:'411311' ),
  ( a:' '; b:' '; c:'99'; data:'113141' ),
  ( a:' '; b:' '; c:'  '; data:'114131' ),
  ( a:' '; b:' '; c:'  '; data:'311141' ),
  ( a:' '; b:' '; c:'  '; data:'411131' )      { FNC1 }
  );

StartA = '211412';
StartB = '211214';
StartC = '211232';
Stop   = '2331112';




{find Code 128 Codeset A or B}
function Find_Code128AB(c:char):integer;
var
  i:integer;
  v:char;
begin
  for i:=0 to High(tabelle_128) do
  begin
    if FTyp = bcCode128A then
      v := tabelle_128[i].a
    else
      v := tabelle_128[i].b;

    if c = v then
    begin
      result := i;
      exit;
    end;
  end;
  result := -1;
end;

{ find Code 128 Codeset C }
function Find_Code128C(c:string):integer;
  var  i:integer;
  begin
    for i:=0 to High(tabelle_128) do begin
      if tabelle_128[i].c = c then begin
       result := i;
       exit;
      end;
    end;
    result := -1;
  end;



var i, j, idx: integer;
  startcode:string;
  checksum : integer;
  codeword_pos : integer;

begin
  case FTyp of
    bcCode128A, bcCodeEAN128A:
      begin checksum := 103; startcode:= StartA; end;
    bcCode128B, bcCodeEAN128B:
      begin checksum := 104; startcode:= StartB; end;
    bcCode128C, bcCodeEAN128C:
      begin checksum := 105; startcode:= StartC; end;
    else
      raise Exception.CreateFmt('%s: wrong BarcodeType in Code_128', [self.ClassName]);
  end;

  result := startcode;    {Startcode}
  codeword_pos := 1;

  case FTyp of
    bcCodeEAN128A,
    bcCodeEAN128B,
    bcCodeEAN128C:
      begin
      {
      special identifier
      FNC1 = function code 1
      for EAN 128 barcodes
      }
      result := result + tabelle_128[102].data;
      Inc(checksum, 102*codeword_pos);
      Inc(codeword_pos);
      {
      if there is no checksum at the end of the string
      the EAN128 needs one (modulo 10)
      }
      if FCheckSum then FText:=DoCheckSumming(FTEXT);
      end;
  end;

  if (FTyp = bcCode128C) or (FTyp = bccodeEAN128C) then
  begin
    if (Length(FText) mod 2<>0) then FText:='0'+FText;
    for i:=1 to (Length(FText) div 2) do
    begin
      j:=(i-1)*2+1;
      idx:=Find_Code128C(copy(Ftext,j,2));
      if idx < 0 then idx := Find_Code128C('00');
      result := result + tabelle_128[idx].data;
      Inc(checksum, idx*codeword_pos);
      Inc(codeword_pos);
    end;
  end
  else
    for i:=1 to Length(FText) do
    begin
      idx := Find_Code128AB(FText[i]);
      if idx < 0 then
        idx := Find_Code128AB(' ');
      result := result + tabelle_128[idx].data;
      Inc(checksum, idx*codeword_pos);
      Inc(codeword_pos);
    end;

  checksum := checksum mod 103;
  result := result + tabelle_128[checksum].data;

  result := result + Stop;      {Stopcode}
  Result := Convert(Result);
end;





function THSBarcode.Code_93:string;
type TCode93 =
  record
    c : char;
    data : array[0..5] of char;
  end;

const tabelle_93: array[0..46] of TCode93 = (
  ( c:'0'; data:'131112'  ),
  ( c:'1'; data:'111213'  ),
  ( c:'2'; data:'111312'  ),
  ( c:'3'; data:'111411'  ),
  ( c:'4'; data:'121113'  ),
  ( c:'5'; data:'121212'  ),
  ( c:'6'; data:'121311'  ),
  ( c:'7'; data:'111114'  ),
  ( c:'8'; data:'131211'  ),
  ( c:'9'; data:'141111'  ),
  ( c:'A'; data:'211113'  ),
  ( c:'B'; data:'211212'  ),
  ( c:'C'; data:'211311'  ),
  ( c:'D'; data:'221112'  ),
  ( c:'E'; data:'221211'  ),
  ( c:'F'; data:'231111'  ),
  ( c:'G'; data:'112113'  ),
  ( c:'H'; data:'112212'  ),
  ( c:'I'; data:'112311'  ),
  ( c:'J'; data:'122112'  ),
  ( c:'K'; data:'132111'  ),
  ( c:'L'; data:'111123'  ),
  ( c:'M'; data:'111222'  ),
  ( c:'N'; data:'111321'  ),
  ( c:'O'; data:'121122'  ),
  ( c:'P'; data:'131121'  ),
  ( c:'Q'; data:'212112'  ),
  ( c:'R'; data:'212211'  ),
  ( c:'S'; data:'211122'  ),
  ( c:'T'; data:'211221'  ),
  ( c:'U'; data:'221121'  ),
  ( c:'V'; data:'222111'  ),
  ( c:'W'; data:'112122'  ),
  ( c:'X'; data:'112221'  ),
  ( c:'Y'; data:'122121'  ),
  ( c:'Z'; data:'123111'  ),
  ( c:'-'; data:'121131'  ),
  ( c:'.'; data:'311112'  ),
  ( c:' '; data:'311211'  ),
  ( c:'$'; data:'321111'  ),
  ( c:'/'; data:'112131'  ),
  ( c:'+'; data:'113121'  ),
  ( c:'%'; data:'211131'  ),
  ( c:'['; data:'121221'  ),   {only used for Extended Code 93}
  ( c:']'; data:'312111'  ),   {only used for Extended Code 93}
  ( c:'{'; data:'311121'  ),   {only used for Extended Code 93}
  ( c:'}'; data:'122211'  )    {only used for Extended Code 93}
  );


{find Code 93}
function Find_Code93(c:char):integer;
var
  i:integer;
begin
  for i:=0 to High(tabelle_93) do
  begin
    if c = tabelle_93[i].c then
    begin
      result := i;
      exit;
    end;
  end;
  result := -1;
end;




var
  i, idx : integer;
  checkC, checkK,   {Checksums}
  weightC, weightK : integer;
begin

  result := '111141';   {Startcode}

  for i:=1 to Length(FText) do
  begin
    idx := Find_Code93(FText[i]);
    if idx < 0 then
      raise Exception.CreateFmt('%s:Code93 bad Data <%s>', [self.ClassName,FText]);
    result := result + tabelle_93[idx].data;
  end;

  checkC := 0;
  checkK := 0;

  weightC := 1;
  weightK := 2;

  for i:=Length(FText) downto 1 do
  begin
    idx := Find_Code93(FText[i]);

    Inc(checkC, idx*weightC);
    Inc(checkK, idx*weightK);

    Inc(weightC);
    if weightC > 20 then weightC := 1;
    Inc(weightK);
    if weightK > 15 then weightC := 1;
  end;

  Inc(checkK, checkC);

  checkC := checkC mod 47;
  checkK := checkK mod 47;

  result := result + tabelle_93[checkC].data +
    tabelle_93[checkK].data;

  result := result + '1111411';   {Stopcode}
  Result := Convert(Result);
end;





function THSBarcode.Code_93Extended:string;
const code93x : array[0..127] of string[2] =
  (
  (']U'), ('[A'), ('[B'), ('[C'), ('[D'), ('[E'), ('[F'), ('[G'),
  ('[H'), ('[I'), ('[J'), ('[K'), ('[L'), ('[M'), ('[N'), ('[O'),
  ('[P'), ('[Q'), ('[R'), ('[S'), ('[T'), ('[U'), ('[V'), ('[W'),
  ('[X'), ('[Y'), ('[Z'), (']A'), (']B'), (']C'), (']D'), (']E'),
   (' '), ('{A'), ('{B'), ('{C'), ('{D'), ('{E'), ('{F'), ('{G'),
  ('{H'), ('{I'), ('{J'), ('{K'), ('{L'), ('{M'), ('{N'), ('{O'),
  ( '0'),  ('1'),  ('2'),  ('3'),  ('4'),  ('5'),  ('6'),  ('7'),
   ('8'),  ('9'), ('{Z'), (']F'), (']G'), (']H'), (']I'), (']J'),
  (']V'),  ('A'),  ('B'),  ('C'),  ('D'),  ('E'),  ('F'),  ('G'),
   ('H'),  ('I'),  ('J'),  ('K'),  ('L'),  ('M'),  ('N'),  ('O'),
   ('P'),  ('Q'),  ('R'),  ('S'),  ('T'),  ('U'),  ('V'),  ('W'),
   ('X'),  ('Y'),  ('Z'), (']K'), (']L'), (']M'), (']N'), (']O'),
  (']W'), ('}A'), ('}B'), ('}C'), ('}D'), ('}E'), ('}F'), ('}G'),
  ('}H'), ('}I'), ('}J'), ('}K'), ('}L'), ('}M'), ('}N'), ('}O'),
  ('}P'), ('}Q'), ('}R'), ('}S'), ('}T'), ('}U'), ('}V'), ('}W'),
  ('}X'), ('}Y'), ('}Z'), (']P'), (']Q'), (']R'), (']S'), (']T')
  );

var
  {save:array[0..254] of char;}
  {old:string;}
  save : string;
  i : integer;
begin
 {CharToOem(PChar(FText), save);}



  save := FText;
  FText := '';


  for i:=0 to Length(save)-1 do
  begin
    if ord(save[i]) <= 127 then
      FText := FText + code93x[ord(save[i])];
  end;

  {Showmessage(Format('Text: <%s>', [FText]));}

  result := Code_93;
  FText := save;
end;



function THSBarcode.Code_MSI:string;
const tabelle_MSI:array['0'..'9'] of string[8] =
  (
  ( '51515151' ),    {'0'}
  ( '51515160' ),    {'1'}
  ( '51516051' ),    {'2'}
  ( '51516060' ),    {'3'}
  ( '51605151' ),    {'4'}
  ( '51605160' ),    {'5'}
  ( '51606051' ),    {'6'}
  ( '51606060' ),    {'7'}
  ( '60515151' ),    {'8'}
  ( '60515160' )     {'9'}
  );

var
  i:integer;
  check_even, check_odd, checksum:integer;
begin
  result := '60';    {Startcode}
  check_even := 0;
  check_odd  := 0;

  for i:=1 to Length(FText) do
  begin
    if odd(i-1) then
      check_odd := check_odd*10+ord(FText[i])
    else
      check_even := check_even+ord(FText[i]);

    result := result + tabelle_MSI[FText[i]];
  end;

  checksum := quersumme(check_odd*2) + check_even;

  checksum := checksum mod 10;
  if checksum > 0 then
    checksum := 10-checksum;

  result := result + tabelle_MSI[chr(ord('0')+checksum)];

  result := result + '515'; {Stopcode}
end;



function THSBarcode.Code_PostNet:string;
const tabelle_PostNet:array['0'..'9'] of string[10] =
  (
  ( '5151A1A1A1' ),    {'0'}
  ( 'A1A1A15151' ),    {'1'}
  ( 'A1A151A151' ),    {'2'}
  ( 'A1A15151A1' ),    {'3'}
  ( 'A151A1A151' ),    {'4'}
  ( 'A151A151A1' ),    {'5'}
  ( 'A15151A1A1' ),    {'6'}
  ( '51A1A1A151' ),    {'7'}
  ( '51A1A151A1' ),    {'8'}
  ( '51A151A1A1' )     {'9'}
  );
var
  i:integer;
begin
  result := '51';

  for i:=1 to Length(FText) do
  begin
    result := result + tabelle_PostNet[FText[i]];
  end;
  result := result + '5';
end;


function THSBarcode.Code_Codabar:string;
type TCodabar =
  record
    c : char;
    data : array[0..6] of char;
  end;

const tabelle_cb: array[0..19] of TCodabar = (
  ( c:'1'; data:'5050615'  ),
  ( c:'2'; data:'5051506'  ),
  ( c:'3'; data:'6150505'  ),
  ( c:'4'; data:'5060515'  ),
  ( c:'5'; data:'6050515'  ),
  ( c:'6'; data:'5150506'  ),
  ( c:'7'; data:'5150605'  ),
  ( c:'8'; data:'5160505'  ),
  ( c:'9'; data:'6051505'  ),
  ( c:'0'; data:'5050516'  ),
  ( c:'-'; data:'5051605'  ),
  ( c:'$'; data:'5061505'  ),
  ( c:':'; data:'6050606'  ),
  ( c:'/'; data:'6060506'  ),
  ( c:'.'; data:'6060605'  ),
  ( c:'+'; data:'5060606'  ),
  ( c:'A'; data:'5061515'  ),
  ( c:'B'; data:'5151506'  ),
  ( c:'C'; data:'5051516'  ),
  ( c:'D'; data:'5051615'  )
  );



{find Codabar}
function Find_Codabar(c:char):integer;
var
  i:integer;
begin
  for i:=0 to High(tabelle_cb) do
  begin
    if c = tabelle_cb[i].c then
    begin
      result := i;
      exit;
    end;
  end;
  result := -1;
end;

var
  i, idx : integer;
begin
  result := tabelle_cb[Find_Codabar('A')].data + '0';
  for i:=1 to Length(FText) do
  begin
    idx := Find_Codabar(FText[i]);
    result := result + tabelle_cb[idx].data + '0';
  end;
  result := result + tabelle_cb[Find_Codabar('B')].data;
end;



{---------------}

{Assist function}
function THSBarcode.SetLen(pI:byte):string;
begin
   if Length(FText) > pI then
     Result := Copy(FText, 1, pI) else
     Result := StringOfChar('0', pI-Length(FText)) + FText;
end;



function THSBarcode.Code_UPC_A:string;
var
  i : integer;
  tmp : String;
begin
  FText := SetLen(12);
  if FCheckSum then tmp:=DoCheckSumming(copy(FText,1,11));
  if FCheckSum then FText:=tmp else tmp:=FText;
  result := '505';   {Startcode}
  for i:=1 to 6 do
    result := result + tabelle_EAN_A[tmp[i]];
  result := result + '05050';   {Trennzeichen}
  for i:=7 to 12 do
    result := result + tabelle_EAN_C[tmp[i]];
  result := result + '505';   {Stopcode}
end;


{UPC E Parity Pattern Table , Number System 0}
const tabelle_UPC_E0:array['0'..'9', 1..6] of char =
  (
  ('E', 'E', 'E', 'o', 'o', 'o' ),    { 0 }
  ('E', 'E', 'o', 'E', 'o', 'o' ),    { 1 }
  ('E', 'E', 'o', 'o', 'E', 'o' ),    { 2 }
  ('E', 'E', 'o', 'o', 'o', 'E' ),    { 3 }
  ('E', 'o', 'E', 'E', 'o', 'o' ),    { 4 }
  ('E', 'o', 'o', 'E', 'E', 'o' ),    { 5 }
  ('E', 'o', 'o', 'o', 'E', 'E' ),    { 6 }
  ('E', 'o', 'E', 'o', 'E', 'o' ),    { 7 }
  ('E', 'o', 'E', 'o', 'o', 'E' ),    { 8 }
  ('E', 'o', 'o', 'E', 'o', 'E' )     { 9 }
  );

function THSBarcode.Code_UPC_E0:string;
var i,j : integer;
   tmp : String;
   c   : char;
begin
  FText := SetLen(7);
  tmp:=DoCheckSumming(copy(FText,1,6));
  c:=tmp[7];
  if FCheckSum then FText:=tmp else tmp := FText;
  result := '505';   {Startcode}
  for i:=1 to 6 do
  begin
    if tabelle_UPC_E0[c,i]='E' then
    begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end
    else
    begin
      result := result + tabelle_EAN_A[tmp[i]];
    end;
  end;
  result := result + '05050';   {Stopcode}
end;

function THSBarcode.Code_UPC_E1:string;
var i,j : integer;
   tmp : String;
   c   : char;
begin
  FText := SetLen(7);
  tmp:=DoCheckSumming(copy(FText,1,6));
  c:=tmp[7];
  if FCheckSum then FText:=tmp else tmp := FText;
  result := '505';   {Startcode}
  for i:=1 to 6 do
  begin
    if tabelle_UPC_E0[c,i]='E' then
    begin
      result := result + tabelle_EAN_A[tmp[i]];
    end
    else
    begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end;
  end;
  result := result + '05050';   {Stopcode}
end;

{assist function}
function getSupp(Nr : String) : String;
var i,fak,sum : Integer;
      tmp   : String;
begin
  sum := 0;
  tmp := copy(nr,1,Length(Nr)-1);
  fak := Length(tmp);
  for i:=1 to length(tmp) do
  begin
    if (fak mod 2) = 0 then
      sum := sum + (StrToInt(tmp[i])*9)
    else
      sum := sum + (StrToInt(tmp[i])*3);
    dec(fak);
  end;
  sum:=((sum mod 10) mod 10) mod 10;
  result := tmp+IntToStr(sum);
end;

function THSBarcode.Code_Supp5:string;
var i,j : integer;
   tmp : String;
   c   : char;
begin
  FText := SetLen(5);
  tmp:=getSupp(copy(FText,1,5)+'0');
  c:=tmp[6];
  if FCheckSum then FText:=tmp else tmp := FText;
  result := '506';   {Startcode}
  for i:=1 to 5 do
  begin
    if tabelle_UPC_E0[c,(6-5)+i]='E' then
    begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end
    else
    begin
      result := result + tabelle_EAN_A[tmp[i]];
    end;
    if i<5 then result:=result+'05'; // character delineator
  end;
end;

function THSBarcode.Code_Supp2:string;
var i,j : integer;
   tmp,mS : String;
begin
  FText := SetLen(2);
  i:=StrToInt(Ftext);
  case i mod 4 of
    3: mS:='EE';
    2: mS:='Eo';
    1: mS:='oE';
    0: mS:='oo';
  end;
  tmp:=getSupp(copy(FText,1,5)+'0');

  if FCheckSum then FText:=tmp else tmp := FText;
  result := '506';   {Startcode}
  for i:=1 to 2 do
  begin
    if mS[i]='E' then
    begin
      for j:= 1 to 4 do result := result + tabelle_EAN_C[tmp[i],5-j];
    end
    else
    begin
      result := result + tabelle_EAN_A[tmp[i]];
    end;
    if i<2 then result:=result+'05'; // character delineator
  end;
end;

{---------------}




procedure THSBarcode.MakeModules;
begin
  case Typ of
    bcCode_2_5_interleaved,
    bcCode_2_5_industrial,
    bcCode39,
    bcCodeEAN8,
    bcCodeEAN13,
    bcCode39Extended,
    bcCodeCodabar,
    bcCodeUPC_A,
    bcCodeUPC_E0,
    bcCodeUPC_E1,
    bcCodeUPC_Supp2,
    bcCodeUPC_Supp5:

    begin
      if Ratio < 2.0 then Ratio := 2.0;
      if Ratio > 3.0 then Ratio := 3.0;
    end;

    bcCode_2_5_matrix:
    begin
      if Ratio < 2.25 then Ratio := 2.25;
      if Ratio > 3.0 then Ratio := 3.0;
    end;
    bcCode128A,
    bcCode128B,
    bcCode128C,
    bcCode93,
    bcCode93Extended,
    bcCodeMSI,
    bcCodePostNet:    ;
  end;


  modules[0] := FModul;
  modules[1] := Round(FModul*FRatio);
  modules[2] := modules[1] * 3 div 2;
  modules[3] := modules[1] * 2;
end;





{
Draw the Barcode

Parameter :
'data' holds the pattern for a Barcode.
A barcode begins always with a black line and
ends with a black line.

The white Lines builds the space between the black Lines.

A black line must always followed by a white Line and vica versa.

Examples:
  '50505'   // 3 thin black Lines with 2 thin white Lines
  '606'     // 2 fat black Lines with 1 thin white Line

  '5605015' // Error


data[] : see procedure OneBarProps

}
procedure THSBarcode.DoLines(data:string; Canvas:TCanvas);

var i:integer;
  lt : THSBarLineType;
  xadd:integer;
  width, height:integer;
  a,b,c,d,     {Edges of a line (we need 4 Point because the line}
          {is a recangle}
  orgin : TPoint;
  alpha:double;
  LAppend:Boolean;
begin
  xadd := 0;
  orgin.x := FLeft;
  orgin.y := FTop;

  alpha := FAngle/180.0*pi;

  { Move the orgin so the entire barcode ends up in the visible region. }
  orgin := TranslateQuad2D(alpha,orgin,Point(Self.Width,Self.Height));

  with Canvas do begin
    Pen.Width := 1;

   for i:=1 to Length(data) do  {examine the pattern string}
    begin

      {
      input:  pattern code
      output: Width and Linetype
      }
      OneBarProps(data[i], width, lt);

      if (lt = black) or (lt = black_half) then
      begin
        Pen.Color := FColorBar;
      end
      else
      begin
        Pen.Color := FColor;
      end;
      Brush.Color := Pen.Color;

      if lt = black_half then
        height := FHeight * 2 div 5
      else
        height := FHeight;



      //先判断当前位是不是属于该条形码类型的固定哗长线的位数
      LAppend:=IsAppendLine(i);

      a.x := xadd;
      a.y := 0;
      if LAppend then
      begin
        b.x := xadd;
        b.y := height+9;
      end
      else
      begin
        b.x := xadd;
        b.y := height;
      end;


    {c.x := xadd+width;}
    //c.x := xadd+Width-1;  {23.04.1999 Line was 1 Pixel too wide}
    //  c.y := Height;

      if LAppend then  //如果是固定需要哗长线的，比其他多哗9mm
      begin
        c.x := xadd+Width-1;  {23.04.1999 Line was 1 Pixel too wide}
        c.y := Height+9;
      end
      else
      begin
        c.x := xadd+Width-1;  {23.04.1999 Line was 1 Pixel too wide}
        c.y := Height;
      end;
    {d.x := xadd+width;}
    d.x := xadd+Width-1;  {23.04.1999 Line was 1 Pixel too wide}
      d.y := 0;

    {a,b,c,d builds the rectangle we want to draw}


    {rotate the rectangle}
      a := Translate2D(Rotate2D(a, alpha), orgin);
      b := Translate2D(Rotate2D(b, alpha), orgin);
      c := Translate2D(Rotate2D(c, alpha), orgin);
      d := Translate2D(Rotate2D(d, alpha), orgin);

    {draw the rectangle}
      Polygon([a,b,c,d]);

      xadd := xadd + width;
    end;
  end;
end;



procedure THSBarcode.DrawBarcode(Canvas:TCanvas);
var
  data : string;
  SaveFont: TFont;
  SavePen: TPen;
  SaveBrush: TBrush;
begin
  Savefont  := TFont.Create;
  SavePen   := TPen.Create;
  SaveBrush := TBrush.Create;


  {get barcode pattern}
  data := MakeData;


  try
   {store Canvas properties}
    Savefont.Assign(Canvas.Font);
    SavePen.Assign(Canvas.Pen);
    SaveBrush.Assign(Canvas.Brush);

    DoLines(data, Canvas);    {draw the barcode}

   {restore old Canvas properties}
    Canvas.Font.Assign(savefont);
    Canvas.Pen.Assign(SavePen);
    Canvas.Brush.Assign(SaveBrush);
  finally
    Savefont.Free;
    SavePen.Free;
    SaveBrush.Free;
  end;
end;


{
  draw contents and type/name of barcode
  as human readable text at the left
  upper edge of the barcode.

  main use for this procedure is testing.

  note: this procedure changes Pen and Brush
  of the current canvas.
}


procedure THSBarcode.DoChange;
begin
   if Assigned(FOnChange) then
      FOnChange(Self);
end;

procedure THSBarcode.SetRatio(const Value: Double);
begin
   if Value <> FRatio then
   begin
      FRatio := Value;
      DoChange;
   end;
end;

procedure THSBarcode.SetTyp(const Value: THSBarcodeType);
begin
   if Value <> FTyp then
   begin
      FTyp := Value;

      DoChange;
   end;
end;

procedure THSBarcode.SetAngle(const Value: Double);
begin
   if Value <> FAngle then
   begin
      FAngle := Value;
      DoChange;
   end;
end;

procedure THSBarcode.SetText(const Value: string);
begin
   if Value <> FText then
   begin
      FText := Value;
      DoChange;
   end;
end;

procedure THSBarcode.SetTop(const Value: Integer);
begin
   if Value <> FTop then
   begin
      FTop := Value;
      DoChange;
   end;
end;

procedure THSBarcode.SetLeft(const Value: Integer);
begin
   if Value <> FLeft then
   begin
      FLeft := Value;
      DoChange;
   end;
end;

procedure THSBarcode.SetCheckSum(const Value: Boolean);
begin
   if Value <> FCheckSum then
   begin
      FCheckSum := Value;
      DoChange;
   end;
end;

procedure THSBarcode.SetHeight(const Value: integer);
begin
   if Value <> FHeight then
   begin
      FHeight := Value;
      DoChange;
   end;
end;

function THSBarcode.GetCanvasHeight: Integer;
var
  alpha :Extended;
begin
  alpha := FAngle/180.0*pi;
  Result := Round(abs(sin(alpha))*Self.Width + abs(cos(alpha))*Self.Height + 0.5); //.5 rounds up always
end;

function THSBarcode.GetCanvasWidth: Integer;
var
  alpha :Extended;
begin
  alpha := FAngle/180.0*pi;
  Result := Round(abs(cos(alpha))*Self.Width + abs(sin(alpha))*Self.Height + 0.5); //.5 rounds up always
end;

procedure Register;
begin
  RegisterComponents('HisControls', [THSBarCodeImage]);

end;

{ THSBarCodeImage }

procedure THSBarCodeImage.ChangeSet(Sender: TObject);
begin
  ShowBarCode;
end;

constructor THSBarCodeImage.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := ControlStyle + [csReplicatable];
  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange:=ChangeSet;
  FCode:='690012865431';
  FCodeType:=bcCodeEAN13;
  FBarLabel:='';
  FShowLabel:=true;
  FWidth:=16;    //标准的宽度
  FHeight:=32;
  DataSource:=nil;
  DataField:='';
  //
  ShowBarCode;
end;

destructor THSBarCodeImage.Destroy;
begin
  FDataLink.Free;
  FDataLink:=nil;
  inherited;
end;



function THSBarCodeImage.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function THSBarCodeImage.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;




procedure THSBarCodeImage.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
 inherited Notification(AComponent, Operation);
 if (Operation = opRemove) and (FDataLink <> nil) and
   (AComponent = DataSource) then DataSource := nil;
end;

procedure THSBarCodeImage.Print;
begin
  with self.Picture.Bitmap do
  Begin
    Printer.BeginDoc ;
    printer.Canvas.StretchDraw(Canvas.ClipRect,self.Picture.Bitmap);
    printer.EndDoc;
  End;
end;







procedure THSBarCodeImage.ResetMaxLength;
var
  F: TField;
begin
 if Assigned(DataSource) and Assigned(DataSource.DataSet) then
  begin
    F := DataSource.DataSet.FindField(DataField);
    if Assigned(F) and (F.DataType in [ftString, ftWideString]) then
     ;
  end;
end;


procedure THSBarCodeImage.SetBarCodeAngle(const value: Double);
begin
  if (Value=0) or (Value=90) or (value=270) or (value=180) then
  begin
  FBarcodeAngle:=Value;
  ShowBarCode;
  end
  Else
  Begin
    showmessage('旋转角度不合法！为0或90或180或270');
  End;
end;

procedure THSBarCodeImage.SetBarLabel(const Value: String);
begin
  FBarLabel := Value;
  ShowBarCode;
end;

procedure THSBarCodeImage.SetCode(const Value: string);
begin
  FCode := Value;
  ShowBarCode;
end;

procedure THSBarCodeImage.SetCodeType(const Value: THSBarcodeType);
begin
  FCodeType := Value;
  ShowBarCode;
end;





procedure THSBarCodeImage.SetDataField(const Value: string);
begin
  if not (csDesigning in ComponentState) then
    ResetMaxLength;
  FDataLink.FieldName := Value;
end;

procedure THSBarCodeImage.SetDataSource(const Value: TDataSource);
begin

  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;


procedure THSBarCodeImage.SetHeight(const Value: integer);
begin
  FHeight := Value;
  ShowBarCode;
end;


procedure THSBarCodeImage.SetShowLabel(const Value: Boolean);
begin
  FShowLabel := Value;
  ShowBarCode;
end;

procedure THSBarCodeImage.SetWidth(const Value: integer);
begin
  FWidth := Value;
  ShowBarCode;
end;

procedure THSBarCodeImage.ShowBarCode;
var FBC:THSBarCode;
    bmp:TBitmap;
    ALabel:String;
    {h, oldh: HFont;
    function CreateRotatedFont(Font: TFont; Angle: Integer): HFont;
    var
     F: TLogFont;
    begin
        GetObject(Font.Handle, SizeOf(TLogFont), @F);
        F.lfEscapement := Angle * 10;
        F.lfOrientation := Angle * 10;
        Result := CreateFontIndirect(F);
    end;}
begin
  Fbc := THSBarCode.Create(nil);
  bmp:=TBitmap.Create;
  if (self.DataField<>'') and (self.DataSource<>nil) then
  begin
    try
      FBC.Text :=FDataLink.Field.AsString;
    except
      showmessage('读取DB数据失败');
    end;
  end
  else
    FBC.Text :=FCode;//M1.Text;
  FBC.CheckSum  := true;//ckCheckSum.Checked;
  FBC.Typ := FCodeType;
  FBC.Height:=FHeight;
  FBC.Width:=FWidth;
  fbc.FRatio:=FWidth/16;
  FBC.Left:=10;
  fbc.Top:=4;
  if (FBC.Text = '') or (FBC.Text[1] <> '[') then
    try
      bmp.Width:=FBC.CanvasWidth+20;
      if FShowLabel then//如果需要显示底部的数据
        bmp.Height:=FBC.CanvasHeight+20
      else
        bmp.Height:=FBC.CanvasHeight+10;
      FBC.DrawBarcode(bmp.Canvas);
      IF FBarLabel='' then ALabel:=fbc.text  Else ALabel:=FBarLabel+':'+fbc.text;
      if FShowLabel then//如果需要显示底部的数据
      begin
        bmp.Canvas.Font.Color := clBlack;
        bmp.Canvas.Font.Name := 'Courier New';
        bmp.Canvas.Font.Height := -12;
        bmp.Canvas.Font.Style := [];
        if FBC.FTyp=bcCodeEAN13 then  //反复调试EAN13后的标准位置
        begin
          bmp.Canvas.TextOut(0,fbc.CanvasHeight+5,copy(fbc.FText,1,1));
          bmp.Canvas.TextOut(10+Floor(fbc.FRatio*3/2)+(((fbc.CanvasWidth div 2)-Floor(fbc.FRatio*3/2)-bmp.Canvas.TextWidth('000000')) div 2),fbc.CanvasHeight+5,copy(fbc.FText,2,6));
          bmp.Canvas.TextOut(10+(((fbc.CanvasWidth div 2)-Floor(fbc.FRatio*3/2)-bmp.Canvas.TextWidth('000000')) div 2)+(fbc.CanvasWidth div 2),fbc.CanvasHeight+5,copy(fbc.FText,7,6));
        end
        else  //如果其他类型条形码的字符也不是紧挨着居中的，自己加代码处理即可
        begin
          bmp.Canvas.TextOut(((Fbc.CanvasWidth-bmp.Canvas.TextWidth(ALabel)) div 2),fbc.CanvasHeight +5,ALabel);
        end;
        {以下是FR的旋转，思路不好，不如直接对CANVAS做旋转后COPY给IMAGE
        //h := CreateRotatedFont(bmp.Canvas.Font, Round(fbc.FAngle));
        //oldh := SelectObject(bmp.Canvas.Handle, h);
        if fbc.FAngle = 0 then
        bmp.Canvas.TextOut((bmp.Width - bmp.Canvas.TextWidth(ALabel)) div 2, fbc.CanvasHeight, ALabel)
        else if fbc.FAngle = 90 then
        bmp.Canvas.TextOut(bmp.width - 12, fbc.CanvasHeight - (fbc.CanvasHeight - bmp.Canvas.TextWidth(ALabel)) div 2, ALabel)
        else if fbc.FAngle = 180 then
        bmp.Canvas.TextOut(fbc.CanvasWidth - (fbc.CanvasWidth - bmp.Canvas.TextWidth(ALabel)) div 2, 12, ALabel)
        else
        bmp.Canvas.TextOut(12, (fbc.CanvasHeight - bmp.Canvas.TextWidth(ALabel)) div 2, ALabel);
        SelectObject(bmp.Canvas.Handle, oldh);
        DeleteObject(h);}
      end;
      //最后按照旋转对已有标准CANVASE做转换供IMAGE的COPY使用
      if FBarCodeAngle=90 then
      begin
        ImageRotate90(bmp);
      end
      else if FBarCodeAngle=180 then
      begin
        ImageRotate90(bmp);
        ImageRotate90(bmp);
      end
      else if FBarCodeAngle=270 then
      begin
        ImageRotate90(bmp);
        ImageRotate90(bmp);
        ImageRotate90(bmp);
      end
      Else ;
      self.Picture.Bitmap.Assign(bmp);
      self.Resize;
      self.AutoSize:=true;
     except
      MessageBox(0, PChar('生成条形码图形失败!'), PChar('提示'),
        mb_Ok + mb_IconError);
    end;
  FBC.free;
  Bmp.Free;
end;

function THSBarcode.IsAppendLine(const i:integer): Boolean;
begin
  Result:=False; //默认是不延长的
  IF FTyp=bcCodeEAN13 THEN     //我只修改了EAN13的需要划长线的判断函数
  Begin
    case i of
    1,2,3,28,29,30,31,32,57,58,59: result:=true
    else result:=false
    end;
  End
  ELSE //你可以依据其他也需要有固定长线的条形码标准写其他条形码的判断函数
  BEGIN
    Result:=False;
  END;
end;



end.
