object DM: TDM
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica_medica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 96
  end
  object dsPacientes: TDataSource
    DataSet = tbPacientes
    Left = 208
    Top = 192
  end
  object dsAgendamentos: TDataSource
    DataSet = tbAgendamentos
    Left = 312
    Top = 192
  end
  object tbPacientes: TFDTable
    Active = True
    AfterInsert = tbPacientesAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica_medica.paciente'
    Left = 208
    Top = 96
    object tbPacientesid: TFDAutoIncField
      Alignment = taLeftJustify
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbPacientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object tbPacientescelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      EditMask = '(##)#####-####;1;_'
      Size = 16
    end
    object tbPacientesdata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object tbPacientescpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '###.###.###_##;1;_'
      Size = 14
    end
  end
  object tbAgendamentos: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'clinica_medica.agendamento'
    Left = 312
    Top = 96
    object tbAgendamentosid: TFDAutoIncField
      Alignment = taLeftJustify
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbAgendamentosid_paciente: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
      Required = True
    end
    object tbAgendamentosdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      EditMask = '##/##/####;1;_'
    end
    object tbAgendamentoshora: TStringField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
      EditMask = '##:##;1;_'
      Size = 8
    end
    object tbAgendamentosespecialidade: TStringField
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Required = True
      Size = 25
    end
    object tbAgendamentosmedico: TStringField
      FieldName = 'medico'
      Origin = 'medico'
      Required = True
      Size = 30
    end
  end
end
