object dm_SendMapiMail: Tdm_SendMapiMail
  OldCreateOrder = False
  Height = 249
  Width = 410
  object EWSSession: TRwEWSSession
    UserAgent = 'RAPWare EWS Client'
    AccessType = atDefault
    SecurityFlags = []
    ProfileRequired = True
    ServiceUrl = ''
    ConnectingSIDType = csSmtpAddress
    NTService = False
    LogonDialog = True
    PasswordDialog = True
    Left = 130
    Top = 82
  end
end
