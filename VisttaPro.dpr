﻿program VisttaPro;

uses
  Vcl.Forms,
  Login in 'Login.pas' {FLogin},
  Inicio in 'Inicio.pas' {fmInicio},
  U_DM in 'U_DM.pas' {DM},
  CadUsuario in 'CadUsuario.pas' {FCadUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // Primeiro cria o formulário MDI principal
  Application.CreateForm(TfmInicio, fmInicio);

  // Depois cria o DataModule
  Application.CreateForm(TDM, DM);

  Application.Run;
end.
