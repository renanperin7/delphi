object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 561
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 232
    Height = 32
    Caption = 'Agenda de Contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 94
    Height = 15
    Caption = 'Nome do contato'
  end
  object Label3: TLabel
    Left = 8
    Top = 176
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label4: TLabel
    Left = 8
    Top = 304
    Width = 67
    Height = 15
    Caption = 'Observa'#231#245'es'
  end
  object Label5: TLabel
    Left = 8
    Top = 448
    Width = 127
    Height = 15
    Caption = 'Data e Hora do cadastro'
  end
  object DBText1: TDBText
    Left = 8
    Top = 480
    Width = 153
    Height = 17
    DataField = 'data'
    DataSource = DM.dsContatos
  end
  object Label6: TLabel
    Left = 339
    Top = 104
    Width = 50
    Height = 15
    Caption = 'Pesquisar'
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 136
    Width = 289
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsContatos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 208
    Width = 289
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsContatos
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 8
    Top = 264
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    DataField = 'bloqueado'
    DataSource = DM.dsContatos
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 336
    Width = 289
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.dsContatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 64
    Width = 280
    Height = 25
    DataSource = DM.dsContatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 339
    Top = 176
    Width = 281
    Height = 321
    DataSource = DM.dsContatos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = ' Contatos Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 339
    Top = 136
    Width = 281
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
