unit P_luying;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, MPlayer;

type
  TWavHeader = record //定义一个Wav文件头格式
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
   //自定义写一个Wav文件头过程
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
 if bt_play.Caption='播放口述病历' then
 begin
 BtStart.Enabled:=false;
 Btstop.Enabled:=false;
  bt_play.Caption:='停止播放口述病历';
  try
    MediaPlayer1.FileName := (ExtractFilePath(Application.ExeName) +pub_tmh+ '.wav');
    MediaPlayer1.Open;
    MediaPlayer1.Play;
  except
    MediaPlayer1.Close;
    MediaPlayer1.CleanupInstance;
    application.MessageBox('没有录音，不能播放口述病历!','提示',0+48);
  end;
 end
 else
 begin
    BtStart.Enabled:=true;
    Btstop.Enabled:=true;
    MediaPlayer1.Stop;
    MediaPlayer1.Close;
    MediaPlayer1.CleanupInstance;
    bt_play.Caption:='播放口述病历';
 end;
end;

procedure Tfrm_luying.BtStartClick(Sender: TObject);
begin
  try
//在程序当前目录下创建一个Wav文件Temp.wav
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
    Application.MessageBox('媒体设备初始化失败！', '错误', MB_ICONERROR + MB_OK);
  end;
end;


procedure Tfrm_luying.BtStopClick(Sender: TObject);
begin
  try
    MediaPlayer1.Stop;
    MediaPlayer1.Save;
    MediaPlayer1.Close;
    MediaPlayer1.CleanupInstance;
    Application.MessageBox('声音录制完毕!', '信息', MB_ICONINFORMATION + MB_OK);
    BtStart.Enabled := True;
    BtStop.Enabled := false;
    bt_play.Enabled:= true;
  except
    Application.MessageBox('保存声音文件出错!', '错误', MB_ICONERROR + MB_OK);
    BtStart.Enabled := True;
    BtStop.Enabled := false;
  end;
end;

procedure Tfrm_luying.CreateWav(channels: word; { 1(单声)或者2(立体声) }
  resolution: word; { 8或者16,代表8位或16位声音 }
  rate: longint; { 声音频率,如11025,22050, 44100}
  fn: string { 对应的文件名称 });
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
  assignfile(wf, fn); {打开对应文件 }
  rewrite(wf); {移动指针到文件头}
  write(wf, wh); {写进文件头 }
  closefile(wf); {关闭文件 }
end;


end.

