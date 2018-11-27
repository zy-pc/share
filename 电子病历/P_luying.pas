unit P_luying;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, MPlayer;

type
  TWavHeader = record //����һ��Wav�ļ�ͷ��ʽ
    rId: longint;
    rLen: longint;
    wId: longint;
    fId: longint;
    fLen: longint;
    wFormatTag: word;
    nChannels: word;
    nSamplesPerSec: longint;
    nAvgBytesPerSec: longint;
    nBlockAlign: word;
    wBitsPerSample: word;
    dId: longint;
    wSampleLength: longint;
  end;
  Tfrm_luying = class(TForm)
    MediaPlayer1: TMediaPlayer;
    BtStart: TBitBtn;
    BtStop: TBitBtn;
    bt_play: TBitBtn;
    procedure BtStartClick(Sender: TObject);
    procedure BtStopClick(Sender: TObject);
    procedure bt_playClick(Sender: TObject);
  private
   //�Զ���дһ��Wav�ļ�ͷ����
    procedure CreateWav(channels: word; resolution: word; rate: longint; fn: string);
    { Private declarations }
  public
    { Public declarations }
  end;


var
  frm_luying: Tfrm_luying;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_luying.bt_playClick(Sender: TObject);
begin
 if bt_play.Caption='���ſ�������' then
 begin
 BtStart.Enabled:=false;
 Btstop.Enabled:=false;
  bt_play.Caption:='ֹͣ���ſ�������';
  try
    MediaPlayer1.FileName := (ExtractFilePath(Application.ExeName) +pub_tmh+ '.wav');
    MediaPlayer1.Open;
    MediaPlayer1.Play;
  except
    MediaPlayer1.Close;
    MediaPlayer1.CleanupInstance;
    application.MessageBox('û��¼�������ܲ��ſ�������!','��ʾ',0+48);
  end;
 end
 else
 begin
    BtStart.Enabled:=true;
    Btstop.Enabled:=true;
    MediaPlayer1.Stop;
    MediaPlayer1.Close;
    MediaPlayer1.CleanupInstance;
    bt_play.Caption:='���ſ�������';
 end;
end;

procedure Tfrm_luying.BtStartClick(Sender: TObject);
begin
  try
//�ڳ���ǰĿ¼�´���һ��Wav�ļ�Temp.wav
    CreateWav(1, 8, 11025, (ExtractFilePath(Application.ExeName) +pub_tmh+ '.wav'));
    MediaPlayer1.DeviceType := dtAutoSelect;
    MediaPlayer1.FileName := (ExtractFilePath(Application.ExeName) +pub_tmh+ '.wav');
    MediaPlayer1.Open;
    MediaPlayer1.StartRecording;
    BtStart.Enabled := false;
    BtStop.Enabled := true;
    bt_play.Enabled:= false;
  except
    BtStart.Enabled := True;
    BtStop.Enabled := false;
    bt_play.Enabled:= false;
    Application.MessageBox('ý���豸��ʼ��ʧ�ܣ�', '����', MB_ICONERROR + MB_OK);
  end;
end;


procedure Tfrm_luying.BtStopClick(Sender: TObject);
begin
  try
    MediaPlayer1.Stop;
    MediaPlayer1.Save;
    MediaPlayer1.Close;
    MediaPlayer1.CleanupInstance;
    Application.MessageBox('����¼�����!', '��Ϣ', MB_ICONINFORMATION + MB_OK);
    BtStart.Enabled := True;
    BtStop.Enabled := false;
    bt_play.Enabled:= true;
  except
    Application.MessageBox('���������ļ�����!', '����', MB_ICONERROR + MB_OK);
    BtStart.Enabled := True;
    BtStop.Enabled := false;
  end;
end;

procedure Tfrm_luying.CreateWav(channels: word; { 1(����)����2(������) }
  resolution: word; { 8����16,����8λ��16λ���� }
  rate: longint; { ����Ƶ��,��11025,22050, 44100}
  fn: string { ��Ӧ���ļ����� });
var
  wf: file of TWavHeader;
  wh: TWavHeader;
begin
  wh.rId := $46464952;
  wh.rLen := 36;
  wh.wId := $45564157;
  wh.fId := $20746D66;
  wh.fLen := 16;
  wh.wFormatTag := 1;
  wh.nChannels := channels;
  wh.nSamplesPerSec := rate;
  wh.nAvgBytesPerSec := channels * rate * (resolution div 8);
  wh.nBlockAlign := channels * (resolution div 8);
  wh.wBitsPerSample := resolution;
  wh.dId := $61746164;
  wh.wSampleLength := 0;
  assignfile(wf, fn); {�򿪶�Ӧ�ļ� }
  rewrite(wf); {�ƶ�ָ�뵽�ļ�ͷ}
  write(wf, wh); {д���ļ�ͷ }
  closefile(wf); {�ر��ļ� }
end;


end.

