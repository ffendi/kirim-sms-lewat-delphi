object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 233
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 54
    Width = 37
    Height = 13
    Caption = 'ISI SMS'
  end
  object Label2: TLabel
    Left = 17
    Top = 85
    Width = 57
    Height = 13
    Caption = 'NO TUJUAN'
  end
  object Label3: TLabel
    Left = 136
    Top = 16
    Width = 18
    Height = 19
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 17
    Top = 116
    Width = 84
    Height = 13
    Caption = 'waktu pengiriman'
  end
  object Label5: TLabel
    Left = 17
    Top = 144
    Width = 72
    Height = 13
    Caption = 'waktu berhenti'
  end
  object Edit1: TEdit
    Left = 136
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 82
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 288
    Top = 49
    Width = 75
    Height = 25
    Caption = 'SET MODEM'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 288
    Top = 80
    Width = 75
    Height = 25
    Caption = 'OPEN'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 288
    Top = 111
    Width = 75
    Height = 25
    Caption = 'KIRIM'
    TabOrder = 4
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 136
    Top = 190
    Width = 97
    Height = 17
    Caption = 'Kirim selalu'
    TabOrder = 5
    OnClick = CheckBox1Click
  end
  object Edit3: TEdit
    Left = 136
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit4: TEdit
    Left = 136
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit5: TEdit
    Left = 136
    Top = 163
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = 'Edit5'
  end
  object Button4: TButton
    Left = 288
    Top = 142
    Width = 75
    Height = 25
    Caption = 'shutdown'
    TabOrder = 9
    OnClick = Button4Click
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    Left = 64
    Top = 224
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 24
    Top = 224
  end
  object waktu: TTimer
    OnTimer = waktuTimer
    Left = 24
    Top = 176
  end
  object chek: TTimer
    OnTimer = chekTimer
    Left = 72
    Top = 176
  end
end
