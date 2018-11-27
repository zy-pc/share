program qxdy;

uses
  Forms,
  main in 'main.pas' {Form2},
  p_dm in 'p_dm.pas' {DM_data: TDataModule},
  p_print_qxlist in 'p_print_qxlist.pas' {frm_print_qxlist};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM_data, DM_data);
  Application.CreateForm(Tfrm_print_qxlist, frm_print_qxlist);
  Application.Run;
end.
