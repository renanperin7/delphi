object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 32
    Top = 32
    Width = 169
    Height = 25
    Caption = 'Mensagem simples'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 96
    Width = 169
    Height = 25
    Caption = 'Alerta'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 32
    Top = 160
    Width = 169
    Height = 25
    Caption = 'Informa'#231#227'o'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 224
    Width = 169
    Height = 25
    Caption = 'Erro'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 32
    Top = 288
    Width = 169
    Height = 25
    Caption = 'Pergunta'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 376
    Top = 96
    Width = 177
    Height = 25
    Caption = 'OK'
    TabOrder = 5
  end
  object Button7: TButton
    Left = 376
    Top = 160
    Width = 177
    Height = 25
    Caption = 'OK / Cancelar'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 376
    Top = 224
    Width = 177
    Height = 25
    Caption = 'Sim / N'#227'o'
    TabOrder = 7
  end
  object Button9: TButton
    Left = 376
    Top = 288
    Width = 177
    Height = 25
    Caption = 'Sair'
    TabOrder = 8
    OnClick = Button9Click
  end
end