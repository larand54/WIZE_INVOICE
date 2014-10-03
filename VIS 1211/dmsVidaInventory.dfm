object dmsInventory: TdmsInventory
  OldCreateOrder = False
  Left = 192
  Top = 116
  Height = 150
  Width = 215
  object sp_PksByInvOwner: TSQLStoredProc
    SQLConnection = dmsConnector.SQLConnection
    Params = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'PkgNo'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'InvOwner'
        ParamType = ptInput
      end>
    StoredProcName = 'vida_PkgsByInventory'
    Left = 56
    Top = 16
  end
  object provPkgsByInvOwner: TDataSetProvider
    DataSet = sp_PksByInvOwner
    Constraints = True
    Left = 56
    Top = 64
  end
end
