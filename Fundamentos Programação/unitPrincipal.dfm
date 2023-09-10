object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'L'#243'gica de programa'#231#227'o'
  ClientHeight = 620
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 64
    Width = 86
    Height = 15
    Caption = 'Digite seu nome'
  end
  object Label2: TLabel
    Left = 40
    Top = 120
    Width = 84
    Height = 15
    Caption = 'Digite sua idade'
  end
  object txtNome: TEdit
    Left = 40
    Top = 85
    Width = 305
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 270
    Top = 178
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object txtIdade: TEdit
    Left = 40
    Top = 141
    Width = 305
    Height = 23
    TabOrder = 2
  end
end
