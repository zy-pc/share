unit p_zysf_fybl;

interface                          

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, DBCtrls, StdCtrls, ComCtrls, Buttons, TeeProcs, TeEngine,
    Chart, Grids, DBGridEh, DB, ADODB, cxControls, cxContainer, cxEdit,
    cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
    cxDBLookupComboBox, Series, cxGraphics, GridsEh, DBGridEhGrouping;

type
    Tfrm_zysf_fybl = class(TForm)
        Panel1: TPanel;
        BitBtn1: TBitBtn;
        b_tc: TBitBtn;
        b_tj: TBitBtn;
        Panel2: TPanel;
        RadioButton2: TRadioButton;
        RadioButton3: TRadioButton;
        RadioButton1: TRadioButton;
        star_date: TDateTimePicker;
        Label1: TLabel;
        Label2: TLabel;
        end_date: TDateTimePicker;
        Label3: TLabel;
        Bevel1: TBevel;
        cxLookupComboBox1: TcxLookupComboBox;
        qry_fydl: TADOQuery;
        ds_fydl: TDataSource;
        sp_fybl: TADOStoredProc;
        ds_fybl: TDataSource;
        PageControl1: TPageControl;
        TabSheet1: TTabSheet;
        TabSheet2: TTabSheet;
        Chart1: TChart;
        Series1: TPieSeries;
        Panel3: TPanel;
        ListBox1: TListBox;
        RadioButton4: TRadioButton;
        Label4: TLabel;
        Splitter2: TSplitter;
        StaticText1: TStaticText;
        Panel4: TPanel;
        DBGridEh1: TDBGridEh;
        Panel5: TPanel;
        Label5: TLabel;
        edit1: TEdit;
        procedure edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
        procedure Chart1DblClick(Sender: TObject);
        procedure DBGridEh1DblClick(Sender: TObject);
        procedure sp_fyblAfterScroll(DataSet: TDataSet);
        procedure PageControl1Change(Sender: TObject);
        procedure b_tcClick(Sender: TObject);
        procedure b_tjClick(Sender: TObject);
        procedure BitBtn1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
    private
    { Private declarations }
        procedure proc_drawImage;
    public
    { Public declarations }
    end;
type TfyblRec = record //费用比例记录结构
        fymc: string;
        value: Double;
    end;
var
    frm_zysf_fybl: Tfrm_zysf_fybl;

implementation

uses p_dm, p_Select, p_func;

{$R *.dfm}

procedure Tfrm_zysf_fybl.proc_drawImage;
var i: Integer;
begin
    if sp_fybl.IsEmpty then exit;

    with Chart1.Series[0] do
    begin
        Clear;
        Chart1.Title.Text.Text := trim(sp_fybl.Fields[1].AsString) + '费用比例图';

        for i := 3 to sp_fybl.FieldCount - 1 do
            if sp_fybl.Fields.Fields[i].AsFloat <> 0 then
                Add(sp_fybl.Fields.Fields[i].AsFloat, sp_fybl.Fields.Fields[i].FieldName);
    end;
end;

procedure Tfrm_zysf_fybl.FormShow(Sender: TObject);
begin
    star_date.Date := frm_func.curr_date;
    End_date.Date := frm_func.curr_date;
    qry_fydl.Close;
    qry_fydl.Open;
    //cxLookupComboBox1.ItemIndex := 0;
end;

procedure Tfrm_zysf_fybl.BitBtn1Click(Sender: TObject);
begin
    application.CreateForm(Tfrm_select, frm_select);
    frm_select.select_grideh := DBGridEh1;
    try
        frm_select.showmodal;
    finally
        frm_select.Free;
    end;
end;

procedure Tfrm_zysf_fybl.b_tjClick(Sender: TObject);
var tjfs: string;
    I: Integer;
begin
    if star_date.Date > end_date.Date then
    begin
        messagebox(self.Handle, '提示:时间范围输入错误!', '错误提示', 16);
        exit;
    end;

    if cxLookupComboBox1.Text = '' then
    begin
        messagebox(self.Handle, '提示:统计大类错误!', '错误提示', 16);
        exit;
    end
    else
        qry_fydl.Locate('kmmc', trim(cxLookupComboBox1.Text), []);

    b_tj.Enabled := False;

    if RadioButton1.Checked then
        tjfs := '1'
    else if RadioButton2.Checked then
        tjfs := '2'
    else if RadioButton3.Checked then
        tjfs := '3'
    else if RadioButton4.Checked then
        tjfs := '4';

    with sp_fybl do
    begin
        Close;
        Parameters.ParamByName('@ksdm').Value := p_dm.pub_ksdm;
        Parameters.ParamByName('@kssj').Value := formatdatetime('yyyymmdd', star_date.Date);
        Parameters.ParamByName('@jssj').Value := formatdatetime('yyyymmdd', end_date.Date);
        Parameters.ParamByName('@fydl').Value := trim(qry_fydl.FieldByName('kmdm').AsString);
        Parameters.ParamByName('@tjfs').Value := tjfs;
        Parameters.ParamByName('@tjfw').Value := '2';
        Open;

    end;

    for i := 0 to DBGridEh1.Columns.Count - 1 do
        DBGridEh1.Columns.Items[i].Width := 70;

    DBGridEh1.Columns.Items[2].Color := clAqua;

    b_tj.Enabled := True;
end;

procedure Tfrm_zysf_fybl.b_tcClick(Sender: TObject);
begin
    Close;
end;

procedure Tfrm_zysf_fybl.PageControl1Change(Sender: TObject);
begin
    proc_drawimage;
end;

procedure Tfrm_zysf_fybl.sp_fyblAfterScroll(DataSet: TDataSet);
var i: Integer;
    stringlist: Tstringlist;
    fyblRec: array of TfyblRec;
    procedure FyblOrder; //费用比例排序
    var value: Double;
        fymc: string;
        i, j: Integer;
    begin
        for i := low(fyblRec) to high(fyblRec) do
            for J := i to high(fyblRec) do
            begin
                if fyblRec[i].value < fyblRec[j].value then
                begin
                    fymc := fyblRec[i].fymc;
                    value := fyblRec[i].value;
                    fyblRec[i].fymc := fyblRec[j].fymc;
                    fyblRec[i].value := fyblRec[j].value;
                    fyblRec[j].fymc := fymc;
                    fyblRec[j].value := value;
                end;
            end;
    end;
    procedure FyblAddtoStrings; //加入到StringList列表;
    var i: Integer;
    begin
        for i := low(fyblRec) to high(fyblRec) do
            stringlist.Add(fyblRec[i].fymc + ':' + FormatFloat('#0.#0%', fyblRec[i].Value));
    end;
begin
    stringlist := nil;
    setlength(fyblRec, sp_fybl.FieldCount - 3); //初始化大小
    try
        stringlist := TstringList.Create;

        for i := 3 to sp_fybl.FieldCount - 1 do
        begin
            fyblRec[i - 3].fymc := sp_fybl.Fields[i].FieldName;
            if sp_fybl.Fields[2].AsFloat <> 0 then
                fyblRec[i - 3].value := sp_fybl.Fields[i].AsFloat / sp_fybl.Fields[2].AsFloat * 100.00
            else
                fyblRec[i - 3].value := 0;
        end;

        FyblOrder; //调用排序
        FyblAddtoStrings; //加入到StringList列表;

        ListBox1.Items.Assign(stringlist);
    finally
        stringlist.Free;
    end;
end;

procedure Tfrm_zysf_fybl.DBGridEh1DblClick(Sender: TObject);
begin
    proc_drawimage;
    PageControl1.ActivePage := TabSheet2;
end;

procedure Tfrm_zysf_fybl.Chart1DblClick(Sender: TObject);
begin
    PageControl1.ActivePage := TabSheet1;
end;

procedure Tfrm_zysf_fybl.edit1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
var dm: string;
begin
    if key <> 13 then exit;
    if not sp_fybl.Active then exit;

    dm := trim(Edit1.Text);

    sp_fybl.Locate('代码', dm, []);
end;

end.
