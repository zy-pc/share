{*******************************************************}
{                                                       }
{       住院收费_退费计费 单元                          }
{                                                       }
{                                                       }
{                                                       }
{*******************************************************}


unit p_zysf_jftf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzTabs;

type
  TFrm_zysf_jftf = class(TForm)
  private
    { Private declarations }
    zy_tmh: string;
  public
    { Public declarations }
  end;

var
  Frm_zysf_jftf: TFrm_zysf_jftf;

implementation

uses p_dm, p_func, p_tzysf, p_zysf_yjjf;

{$R *.dfm}

end.
