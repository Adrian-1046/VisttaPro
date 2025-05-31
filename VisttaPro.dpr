program VisttaPro;

uses
  Vcl.Forms,
  Login in 'Login.pas' {fmLogin},
  Inicio in 'Inicio.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmLogin, fmLogin);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
