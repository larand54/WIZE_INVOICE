object dm_SendMapiMail: Tdm_SendMapiMail
  OldCreateOrder = False
  Height = 249
  Width = 410
  object MapiSession: TRwMapiSession
    LogonInfo.UseExtendedMapi = True
    LogonInfo.Shared = False
    LogonInfo.ProfileRequired = False
    LogonInfo.ForceDownload = False
    LogonInfo.ShowLogonDialog = True
    LogonInfo.NewSession = True
    LogonInfo.NoMail = False
    LogonInfo.NTService = False
    LogonInfo.ShowPasswordDialog = False
    LogonInfo.ShowServiceDialog = False
    LogonInfo.ShortTimeOut = True
    LogonInfo.MultiThreadedNotifications = False
    LogoffInfo.Shared = False
    LogoffInfo.ShowLogoffDialog = False
    Left = 72
    Top = 40
  end
end
