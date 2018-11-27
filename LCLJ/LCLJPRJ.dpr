program LCLJPRJ;



uses
  Forms,
  P_MAIN in 'PAS\P_MAIN.pas' {frm_Main},
  p_func in '..\public\p_func.pas' {Frm_func},
  p_dm in '..\public\p_dm.pas' {DM_data: TDataModule},
  p_zdybb_mb in '..\Share\zdybb\p_zdybb_mb.pas' {frm_zdybb_mb},
  P_Public in 'PAS\P_Public.pas',
  P_LCLJXBJ in 'PAS\P_LCLJXBJ.pas' {frm_LCLJBJ},
  P_LCLJSJ in 'PAS\P_LCLJSJ.pas' {Frm_LCLJSJ},
  P_LCLJSJMX in 'PAS\P_LCLJSJMX.pas' {frm_LCLJSJBX},
  P_LCLJDRPG in 'PAS\P_LCLJDRPG.pas' {frm_LCLJDRPG},
  P_LCLJZDGL in 'PAS\P_LCLJZDGL.pas' {Frm_ZDGL},
  P_LCLJZDGL_ADD in 'PAS\P_LCLJZDGL_ADD.pas' {Frm_ZDGL_ADD},
  P_TreeNodeSel in 'PAS\P_TreeNodeSel.pas' {Frm_TreeNodeSel},
  P_BMSelect in 'PAS\P_BMSelect.pas' {Frm_BMSelect},
  P_LCLJBZSZ in 'PAS\P_LCLJBZSZ.pas' {Frm_LCLJBZSZ},
  P_LCLJJD in 'PAS\P_LCLJJD.pas' {Frm_LCLJJD},
  P_LCLJXMEDIT in 'PAS\P_LCLJXMEDIT.pas',
  p_yzinput in '..\Share\zyyzedit\p_yzinput.pas',
  P_TreeView_ctxz in '..\Share\zyyzedit\P_TreeView_ctxz.pas' {by  add},
  P_TreeView in '..\Share\P_TreeView.pas',
  P_TreeView_ctwh in '..\Share\zyyzedit\P_TreeView_ctwh.pas',
  p_tjyz in '..\Share\zyyzedit\p_tjyz.pas',
  p_xzyf in '..\Share\ysgzzshare\p_xzyf.pas',
  p_jcsqd in '..\Share\ysgzzshare\p_jcsqd.pas',
  p_lsyzxzdy in '..\Share\ysgzzshare\p_lsyzxzdy.pas',
  p_obj in '..\public\p_obj.pas',
  CustomOBJBaseClass in '..\public\CustomOBJBaseClass.pas',
  SCSX_Const in '..\public\SCSX_Const.pas',
  p_cqyzxzdy in '..\Share\ysgzzshare\p_cqyzxzdy.pas',
  p_xz_fyyf in '..\Share\ysgzzshare\p_xz_fyyf.pas',
  p_xgyzzxsj in '..\Share\zyyzedit\p_xgyzzxsj.pas',
  p_tzysf in '..\Share\p_tzysf.pas',
  p_tzyzsj in '..\Share\zyysgzz\p_tzyzsj.pas',
  p_jyxmwrite_zy in '..\Share\ysgzzshare\p_jyxmwrite_zy.pas',
  p_yzfz in '..\Share\zyyzedit\p_yzfz.pas',
  p_fzsm in '..\Share\zyyzedit\p_fzsm.pas',
  p_yzinput_xse in '..\Share\ysgzzshare\p_yzinput_xse.pas',
  P_zyyzmbmc in '..\Share\ysgzzshare\P_zyyzmbmc.pas',
  p_dslr in '..\Share\zyyzedit\p_dslr.pas',
  p_zxdxd in '..\Share\ysgzzshare\p_zxdxd.pas',
  p_xgyl in '..\Share\ysgzzshare\p_xgyl.pas',
  p_xbs in '..\Share\ysgzzshare\p_xbs.pas',
  p_pub_sj in '..\Share\p_pub_sj.pas',
  PassInterfaceClass in '..\Share\合理用药\PassInterfaceClass.pas',
  p_PassDllClare in '..\Share\合理用药\p_PassDllClare.pas',
  p_yzzt in '..\Share\zyyzedit\p_yzzt.pas',
  p_bylsyz in '..\Share\zyyzedit\p_bylsyz.pas',
  P_login in '..\public\P_login.pas' {Frm_login},
  p_bqgl_sssq in '..\Share\手术麻醉\p_bqgl_sssq.pas' {frm_sssq};

{Frm_LCLJXMEDIT}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_Main, frm_Main);
  Application.CreateForm(TDM_data, DM_data);
  Application.CreateForm(TFrm_func, Frm_func);
  Application.CreateForm(TFrm_login, Frm_login);
  Application.CreateForm(Tfrm_sssq, frm_sssq);
  frm_login.ShowModal;
  Application.Run;
end.
