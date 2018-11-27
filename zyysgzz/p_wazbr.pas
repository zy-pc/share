unit p_wazbr;

interface
                                                                           
uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, ADODB;

type
    Tfrm_wazbr = class(TForm)
        DBGrid1: TDBGrid;
        DataSource1: TDataSource;
        Sp_wazbr: TADOStoredProc;
        Panel1: TPanel;
        Label1: TLabel;
        bch: TEdit;
        BitBtn1: TBitBtn;
        procedure bchExit(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure FormKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure BitBtn1Click(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_wazbr: Tfrm_wazbr;

implementation

{$R *.DFM}

procedure Tfrm_wazbr.bchExit(Sender: TObject);
var ls: string;
begin
    ls := trim(bch.text);
    Sp_wazbr.Close;
    if length(ls) = 0 then
        Sp_wazbr.Parameters.ParamByName('@xm').value := ''
    else
    begin
        if ls[1] in ['0'..'9'] then
            ls := stringofchar('0', 9 - length(ls)) + ls;
        Sp_wazbr.Parameters.ParamByName('@xm').value := ls;
    end;
    Sp_wazbr.Open;
end;

procedure Tfrm_wazbr.FormActivate(Sender: TObject);
begin
    Sp_wazbr.Close;
    Sp_wazbr.Parameters.ParamByName('@xm').value := '';
    Sp_wazbr.Open;
end;

procedure Tfrm_wazbr.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then selectnext(activecontrol, true, true);
end;

procedure Tfrm_wazbr.BitBtn1Click(Sender: TObject);
begin
    Sp_wazbr.Close;
    close;
end;

end.
