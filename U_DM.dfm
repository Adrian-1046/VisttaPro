object DM: TDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object CONEXAO: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\User\Documents\repositories\VisttaPro\BASE\FBV' +
        'ISTTAPRO.FDB'
      'User_Name=SYSDBA'
      'Password=dcp8085dN@'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 184
    Top = 96
  end
  object transacao: TFDTransaction
    Connection = CONEXAO
    Left = 312
    Top = 96
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 472
    Top = 96
  end
end
