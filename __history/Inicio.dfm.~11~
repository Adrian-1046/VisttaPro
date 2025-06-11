object fmInicio: TfmInicio
  Left = 0
  Top = 0
  Caption = 'fmInicio'
  ClientHeight = 634
  ClientWidth = 1075
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object StatusBar1: TStatusBar
    Left = 0
    Top = 615
    Width = 1075
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
    ExplicitTop = 606
    ExplicitWidth = 1069
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1075
    Height = 615
    ActivePage = tsInicio
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1069
    ExplicitHeight = 606
    object tsInicio: TTabSheet
      Caption = 'P'#225'gina Inicial'
    end
  end
  object MainMenu1: TMainMenu
    Left = 968
    Top = 360
    object Sistema1: TMenuItem
      Caption = 'S - Sistema'
      object N0AlterarSenha1: TMenuItem
        Caption = 'S0 - Alterar Senha'
      end
    end
    object N0Cadastro1: TMenuItem
      Caption = '0 - Cadastro'
      object N0Cadastro2: TMenuItem
        Caption = '01 - Cadastro de Usu'#225'rio'
        OnClick = N0Cadastro2Click
      end
    end
  end
  object Q_Padrao: TFDQuery
    Connection = DM.CONEXAO
    Left = 968
    Top = 232
  end
  object DS_Padrao: TDataSource
    DataSet = Q_Padrao
    Left = 968
    Top = 288
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 968
    Top = 432
  end
  object ActionManager1: TActionManager
    Left = 968
    Top = 504
    StyleName = 'Platform Default'
  end
end
