unit P_MAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ADODB, ToolWin, Menus, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, Buttons, ExtCtrls,p_yzinput;

type
  Tfrm_Main = class(TForm)
    btn1: TButton;
    Main_Menu: TMainMenu;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frm_Main: Tfrm_Main;

implementation
uses p_dm, p_func, P_Public, P_LCLJSJ, P_LCLJXMEDIT;
{$R *.dfm}

procedure Tfrm_Main.btn1Click(Sender: TObject);
begin
//  AddClass(tv1, 'LCLJ_BYCJYY');

end;

procedure Tfrm_Main.FormActivate(Sender: TObject);
begin
  ADOConnectionMain := DM_data.ado_mydata;
   LCLJGL;
   Close;
end;

procedure Tfrm_Main.FormCreate(Sender: TObject);
begin
  UserName := 'sys_zyyf';

 { pub_czyxm := 'ÕÅÈý';
  pub_ksdm := '0008';
  pub_czydm := '9999';
  pub_zyxyfdm :='0045';  }
end;


end.

