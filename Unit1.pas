unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CPort, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComPort1: TComPort;
    Timer1: TTimer;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    waktu: TTimer;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    chek: TTimer;
    Edit5: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure waktuTimer(Sender: TObject);
    procedure chekTimer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ComPort1.ShowSetupDialog;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if ComPort1.Connected then
  begin
    ComPort1.Close;
    Button2.Caption := 'OPEN';
  end
  else
  begin
    ComPort1.Open;
    Button2.Caption := 'CLOSE';
    ComPort1.WriteStr('at+cmgf=1' + #13);
    ComPort1.WriteStr('at+cscs="gsm"' + #13)
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ComPort1.WriteStr('at+cmgs="' + Edit2.Text + '"' + #13);
  ComPort1.WriteStr(Edit1.Text);
  ComPort1.WriteStr(#26);

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
WinExec('shutdown -s -t 20',SW_NORMAL);
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Timer1.Enabled := true;
  end
  else if CheckBox1.Checked = false then
  begin
    Timer1.Enabled := false;
  end;
end;

procedure TForm1.chekTimer(Sender: TObject);
begin
  if Edit3.Text = Label3.Caption then
  begin
    edit5.Text:='';
    Edit5.Text := 'hidup';
    CheckBox1.Checked:=true;
  end;
  if edit4.Text = label3.Caption then
  begin
    edit5.Text:='';
    edit5.Text:='mati';
    CheckBox1.Checked:=false;
    Button4.Click;
  end;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Button3.Click;
end;

procedure TForm1.waktuTimer(Sender: TObject);
begin
  Label3.Caption := TimeToStr(now);
end;

end.
