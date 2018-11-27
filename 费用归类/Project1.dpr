program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frm_main},
  Unit2 in 'Unit2.pas' {Form2},
  p_dm in '..\..\public\p_dm.pas' {DM_data: TDataModule},
  p_func in '..\..\public\p_func.pas' {Frm_func},
  p_zdybb_mb in '..\..\Share\zdybb\p_zdybb_mb.pas' {frm_zdybb_mb},
  p_zysfxmsz in '..\..\ÏµÍ³Î¬»¤\p_zysfxmsz.pas' {Frm_zysfxmsz};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(TDM_data, DM_data);
  Application.CreateForm(TFrm_func, Frm_func);
  Application.CreateForm(Tfrm_zdybb_mb, frm_zdybb_mb);
  Application.CreateForm(TFrm_zysfxmsz, Frm_zysfxmsz);
  Application.Run;
end.
