object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 8
    Top = 112
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 160
    Top = 112
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 8
    Top = 176
    Width = 89
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 8
    Top = 232
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 160
    Top = 232
    Width = 90
    Height = 15
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 336
    Top = 112
    Width = 50
    Height = 15
    Caption = 'Pesquisar'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 13
      Width = 327
      Height = 45
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 336
      Top = 24
      Width = 270
      Height = 25
      DataSource = DM.dsPacientes
      TabOrder = 0
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 133
    Width = 121
    Height = 23
    DataField = 'id'
    DataSource = DM.dsPacientes
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 133
    Width = 113
    Height = 23
    DataField = 'cpf'
    DataSource = DM.dsPacientes
    MaxLength = 14
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 197
    Width = 273
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsPacientes
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 253
    Width = 121
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsPacientes
    MaxLength = 14
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 160
    Top = 253
    Width = 121
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.dsPacientes
    ReadOnly = True
    TabOrder = 5
  end
  object txtBusca: TEdit
    Left = 336
    Top = 133
    Width = 273
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 162
    Width = 273
    Height = 263
    DataSource = DM.dsPacientes
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pessoas Cadastradas'
        Visible = True
      end>
  end
end